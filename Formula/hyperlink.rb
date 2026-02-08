class Hyperlink < Formula
  desc "Extract hyperlinks from browser tabs as markdown"
  homepage "https://github.com/jandubois/hyperlink"
  url "https://github.com/jandubois/hyperlink/releases/download/v0.2.0/hyperlink-macos-arm64.zip"
  version "0.2.0"
  sha256 "10933d02d8c6fe961817410ff236e5e8ef988905a9caf58ec24e64762748629c"
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
