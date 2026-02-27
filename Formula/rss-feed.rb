class RssFeed < Formula
  desc "Generate RSS feeds from websites"
  homepage "https://github.com/jandubois/rss-feed"
  url "https://github.com/jandubois/rss-feed/releases/download/v0.2.0/rss-feed-darwin-arm64"
  version "0.2.0"
  sha256 "f1bc58f6cfc0b509fd096f4c98b52532a4dcbadb26210e069a63f6f794895ff2"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    binary = Dir.glob("rss-feed*").first
    bin.install binary => "rss-feed"
  end

  test do
    system bin/"rss-feed", "--version"
  end
end
