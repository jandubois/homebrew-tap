class RssFeed < Formula
  desc "Generate RSS feeds from websites"
  homepage "https://github.com/jandubois/rss-feed"
  url "https://github.com/jandubois/rss-feed/releases/download/v0.0.0/rss-feed-macos-arm64.zip"
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "rss-feed"
  end

  test do
    system bin/"rss-feed", "--version"
  end
end
