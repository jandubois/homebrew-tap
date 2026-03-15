class GitLint < Formula
  desc "Check git repo health and fix violations"
  homepage "https://github.com/jandubois/git-lint"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/git-lint/releases/download/v0.6.0/git-lint-darwin-arm64"
      sha256 "c95f5c9a1d489f00a367652597d79f2d9dedd3f5cbc9890d0f63bb633886b04a"
    end
    on_intel do
      url "https://github.com/jandubois/git-lint/releases/download/v0.6.0/git-lint-darwin-amd64"
      sha256 "b5444c663e2a15fdd86b4411e640ac7993e37a3130c2d1bbbfcce4199982d33d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/git-lint/releases/download/v0.6.0/git-lint-linux-arm64"
      sha256 "ae8642c0faf3ceb6c1480768e80efe2b82b29d2e8b5450ee777107b715a4f0f4"
    end
    on_intel do
      url "https://github.com/jandubois/git-lint/releases/download/v0.6.0/git-lint-linux-amd64"
      sha256 "518fd4d0060a3269c874c286da36b14628f8a7dfed3cb0ba432b3f7db1b66a9e"
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
