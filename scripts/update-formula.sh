#!/bin/bash
# Update a Homebrew formula to a new release version.
# Replaces version strings, download URLs, and SHA256 checksums.
#
# Usage: update-formula.sh <formula-name> <new-version>

set -euo pipefail

FORMULA="$1"
VERSION="$2"
FORMULA_FILE="Formula/${FORMULA}.rb"

if [ ! -f "$FORMULA_FILE" ]; then
    echo "Error: $FORMULA_FILE not found" >&2
    exit 1
fi

OLD_VERSION=$(grep '  version "' "$FORMULA_FILE" | head -1 | sed 's/.*"\(.*\)"/\1/')

if [ "$OLD_VERSION" = "$VERSION" ]; then
    echo "Formula $FORMULA already at version $VERSION"
    exit 0
fi

echo "Updating $FORMULA from $OLD_VERSION to $VERSION"

# Update version string and URLs
sed -i "s/version \"${OLD_VERSION}\"/version \"${VERSION}\"/" "$FORMULA_FILE"
sed -i "s|/v${OLD_VERSION}/|/v${VERSION}/|g" "$FORMULA_FILE"

# Update SHA256 checksums for each download URL
while IFS= read -r line; do
    URL=$(echo "$line" | sed 's/.*url "\(.*\)"/\1/')
    ASSET_NAME=$(basename "$URL")

    # Try the .sha256 sidecar file first; fall back to downloading the asset
    SHA256=$(curl -sfL "${URL}.sha256" 2>/dev/null | awk '{print $1}' || true)
    if [ -z "$SHA256" ]; then
        echo "  Downloading $ASSET_NAME to compute checksum..."
        SHA256=$(curl -sfL "$URL" | sha256sum | awk '{print $1}')
    fi

    if [ -z "$SHA256" ]; then
        echo "Error: could not get SHA256 for $ASSET_NAME" >&2
        exit 1
    fi

    echo "  $ASSET_NAME: $SHA256"

    # Replace the sha256 value on the line following this URL
    awk -v url="$URL" -v sha="$SHA256" '
        found && /sha256/ {
            sub(/"[a-f0-9]+"/, "\"" sha "\"")
            found = 0
        }
        index($0, url) { found = 1 }
        { print }
    ' "$FORMULA_FILE" > "${FORMULA_FILE}.tmp"
    mv "${FORMULA_FILE}.tmp" "$FORMULA_FILE"
done < <(grep 'url "https://' "$FORMULA_FILE")

echo "Updated $FORMULA_FILE to $VERSION"
