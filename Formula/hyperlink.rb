class Hyperlink < Formula
  desc "Extract hyperlinks from browser tabs as markdown"
  homepage "https://github.com/jandubois/hyperlink"
  url "https://github.com/jandubois/hyperlink/releases/download/v0.2.2/hyperlink-macos-arm64.zip"
  version "0.2.2"
  sha256 "fb514e349d12bea0f11216c567c2dee3522cfb9cc4d09202372668e01dbe4123"
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
