class Hyperlink < Formula
  desc "Extract hyperlinks from browser tabs as markdown"
  homepage "https://github.com/jandubois/hyperlink"
  url "https://github.com/jandubois/hyperlink/releases/download/v0.3.1/hyperlink-macos-arm64.zip"
  version "0.3.1"
  sha256 "1473ce9386f59c135f5d19aaea066fce9e52d01f2a8c335edbe539b29ee36ffc"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "hyperlink"
  end

  test do
    system bin/"hyperlink", "--version"
  end
end
