class Nobin < Formula
  desc "Scan a directory tree for files containing non-printable or invisible characters"
  homepage "https://github.com/jandubois/nobin"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/nobin/releases/download/v0.4.0/nobin-darwin-arm64"
      sha256 "c4b2e00dd44d7955a8dcaa4572bceebcf6789da1c5b0fc13c8fe66d11ece8e77"
    end
    on_intel do
      url "https://github.com/jandubois/nobin/releases/download/v0.4.0/nobin-darwin-amd64"
      sha256 "bd4e87efb771c4c079fb946c216413e92b5ebf4811db64c4aee4b8d3da648c0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/nobin/releases/download/v0.4.0/nobin-linux-arm64"
      sha256 "e6c1cdba98de594960c7630b7e10e9bc7865196595957f84e98ad075d308ff69"
    end
    on_intel do
      url "https://github.com/jandubois/nobin/releases/download/v0.4.0/nobin-linux-amd64"
      sha256 "5d27d7081306a07450f47e9535a10b5c9c40b577dfbab29554f12b16d1b6a589"
    end
  end

  def install
    binary = Dir.glob("nobin*").first
    bin.install binary => "nobin"
  end

  test do
    system bin/"nobin", "--help"
  end
end
