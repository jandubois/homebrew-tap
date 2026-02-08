class GitLint < Formula
  desc "Check git repo health and fix violations"
  homepage "https://github.com/jandubois/git-lint"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/git-lint/releases/download/v0.4.0/git-lint-darwin-arm64"
      sha256 "49f8350399453bff8adade13f190f979dfd28924cd1be22fed6f323a4a347f8a"
    end
    on_intel do
      url "https://github.com/jandubois/git-lint/releases/download/v0.4.0/git-lint-darwin-amd64"
      sha256 "f8f4e65c59d5efbd0ed105bf0943765763dc89398d5a61d105c8e6e2b7c79b51"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/git-lint/releases/download/v0.4.0/git-lint-linux-arm64"
      sha256 "39be6b3e186f07bb90f0e4fca59be49ae1ed7ca59c380df3d386365517a15a5d"
    end
    on_intel do
      url "https://github.com/jandubois/git-lint/releases/download/v0.4.0/git-lint-linux-amd64"
      sha256 "b0a301882a141ada01ef40b79a2eaa931f0e1f02a33fffaeb5fcdf2086a6d298"
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
