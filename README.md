# Homebrew Tap

Homebrew formulae for personal tools.

## Usage

```sh
brew tap jandubois/tap
brew install git-lint
brew install hyperlink
brew install monitor
brew install web-receipts
```

## Adding a New Formula

1. Create `Formula/<tool>.rb` with the formula definition.

2. In the tool's release workflow, add a step that triggers a formula update
   after the release is published:

   ```yaml
   - name: Update Homebrew tap
     env:
       GH_TOKEN: ${{ secrets.HOMEBREW_TAP_TOKEN }}
     run: |
       VERSION=${GITHUB_REF_NAME#v}
       jq -n --arg v "$VERSION" \
         '{event_type: "update-formula", client_payload: {formula: "<tool>", version: $v}}' |
         gh api repos/jandubois/homebrew-tap/dispatches --input -
   ```

3. Add a `HOMEBREW_TAP_TOKEN` repository secret to the tool repo. The token
   needs write access to `jandubois/homebrew-tap` to send repository dispatches.

4. Publish a `.sha256` sidecar file alongside each release asset. The
   `update-formula.sh` script checks for `<asset-url>.sha256` first and
   downloads the full asset to compute the checksum only as a fallback.

## Available Formulae

| Formula | Description |
|---------|-------------|
| [git-lint](https://github.com/jandubois/git-lint) | Check git repo health and fix violations |
| [hyperlink](https://github.com/jandubois/hyperlink) | Extract hyperlinks from browser tabs as markdown |
| [monitor](https://github.com/jandubois/monitor) | Personal infrastructure monitoring with self-describing probes |
| [web-receipts](https://github.com/jandubois/web-receipts) | Save the current browser tab as a PDF receipt |
