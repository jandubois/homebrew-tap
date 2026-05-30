class Hyperlink < Formula
  desc "Extract hyperlinks from browser tabs as markdown"
  homepage "https://github.com/jandubois/hyperlink"
  url "https://github.com/jandubois/hyperlink/releases/download/v0.3.2/hyperlink-macos-arm64.zip"
  version "0.3.2"
  sha256 "f128471fb5973aaea892f7b0fc0a2d97af81905e55daca1da9a881361b7dd974"
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
