class Hyperlink < Formula
  desc "Extract hyperlinks from browser tabs as markdown"
  homepage "https://github.com/jandubois/hyperlink"
  url "https://github.com/jandubois/hyperlink/releases/download/v0.2.3/hyperlink-macos-arm64.zip"
  version "0.2.3"
  sha256 "a5b49f7b196e3286d9fb17fbca88180ab8f56e9cffd3367a141f3f1ef468c521"
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
