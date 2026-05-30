class Hyperlink < Formula
  desc "Extract hyperlinks from browser tabs as markdown"
  homepage "https://github.com/jandubois/hyperlink"
  url "https://github.com/jandubois/hyperlink/releases/download/v0.3.0/hyperlink-macos-arm64.zip"
  version "0.3.0"
  sha256 "7addb25fbdbc0988af5689843eae1d473d7acff0d31867569ec0db8d9281c757"
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
