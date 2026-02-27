class RssFeed < Formula
  desc "Generate RSS feeds from websites"
  homepage "https://github.com/jandubois/rss-feed"
  url "https://github.com/jandubois/rss-feed/releases/download/v0.3.0/rss-feed-darwin-arm64"
  version "0.3.0"
  sha256 "61a9e329aea0882887ab4aa95cd9c36fd66de92d2afb7c55f81479023338afd8"
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
