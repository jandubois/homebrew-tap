class Hyperlink < Formula
  desc "Extract hyperlinks from browser tabs as markdown"
  homepage "https://github.com/jandubois/hyperlink"
  url "https://github.com/jandubois/hyperlink/releases/download/v0.2.4/hyperlink-macos-arm64.zip"
  version "0.2.4"
  sha256 "99eb38ddbffe47622cfe0ceaf604c95a263c7b0ab96495bf317f2dc347c1311c"
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
