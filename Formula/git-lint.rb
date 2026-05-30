class GitLint < Formula
  desc "Check git repo health and fix violations"
  homepage "https://github.com/jandubois/git-lint"
  version "0.16.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/git-lint/releases/download/v0.16.0/git-lint-darwin-arm64"
      sha256 "e78977460831390acc3747c634b956187663ec7cd5637d81d05057d5e6313828"
    end
    on_intel do
      url "https://github.com/jandubois/git-lint/releases/download/v0.16.0/git-lint-darwin-amd64"
      sha256 "904085d61255ee7cf0a8f87faeba2d57c050b7015b6b3e2c506a86c92a49c658"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/git-lint/releases/download/v0.16.0/git-lint-linux-arm64"
      sha256 "e0ea6840ea0b1ee74fdb71ae1e8360a74e9c54c97b534175b0eb980720942739"
    end
    on_intel do
      url "https://github.com/jandubois/git-lint/releases/download/v0.16.0/git-lint-linux-amd64"
      sha256 "2d4256d9a706abf696ec36e9a911c41d34d2c0b810cd51b1ca4aacaae4168314"
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
