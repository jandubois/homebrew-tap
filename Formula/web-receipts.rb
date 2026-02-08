class WebReceipts < Formula
  desc "Save the current browser tab as a PDF receipt"
  homepage "https://github.com/jandubois/web-receipts"
  url "https://github.com/jandubois/web-receipts/releases/download/v0.3.0/web-receipts-macos-arm64.zip"
  version "0.3.0"
  sha256 "84eb64c57cc6b7eaaa985fd32235848f07e26a19660cbfae4a408410a540a347"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "web-receipts"
  end

  test do
    system bin/"web-receipts", "--version"
  end
end
