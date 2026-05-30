class GitLint < Formula
  desc "Check git repo health and fix violations"
  homepage "https://github.com/jandubois/git-lint"
  version "0.15.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/git-lint/releases/download/v0.15.0/git-lint-darwin-arm64"
      sha256 "0f8085067cc88dcb20a0f897dba90ef0d18afdfaf58aed4fa7aa6d380d0f6387"
    end
    on_intel do
      url "https://github.com/jandubois/git-lint/releases/download/v0.15.0/git-lint-darwin-amd64"
      sha256 "3f5a018a20eae76819a903fc0aa24d38301f2f68a26f6cd2b029f9c5c442a512"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/git-lint/releases/download/v0.15.0/git-lint-linux-arm64"
      sha256 "e3a6fdaaf894e6658f3c9092d78c0aaae008eb6f2e76596c242119fcb90698d3"
    end
    on_intel do
      url "https://github.com/jandubois/git-lint/releases/download/v0.15.0/git-lint-linux-amd64"
      sha256 "9bad4574d6f8b8b7e12c9431d40dcff8e69ef585a05f4affdc323f3116d04265"
    end
  end

  def install
    binary = Dir.glob("git-lint*").first
    bin.install binary => "git-lint"
  end

  test do
    system bin/"git-lint", "--help"
  end
end
