class WebReceipts < Formula
  desc "Save the current browser tab as a PDF receipt"
  homepage "https://github.com/jandubois/web-receipts"
  url "https://github.com/jandubois/web-receipts/releases/download/v0.3.1/web-receipts-macos-arm64.zip"
  version "0.3.1"
  sha256 "f2afc98d8349911c75bd40b5633e8621863e2dc9a6f2a4fc80551b5ee3b3ff6c"
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
