class GitLint < Formula
  desc "Check git repo health and fix violations"
  homepage "https://github.com/jandubois/git-lint"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/git-lint/releases/download/v0.12.0/git-lint-darwin-arm64"
      sha256 "a0d369dcf95c280d602da0ff41763020f00f3f310e0d7771cf244de6a29b27a3"
    end
    on_intel do
      url "https://github.com/jandubois/git-lint/releases/download/v0.12.0/git-lint-darwin-amd64"
      sha256 "626c364b95887bc1201fea197d8076fa504afd9db72a9ab619eb15f698193724"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/git-lint/releases/download/v0.12.0/git-lint-linux-arm64"
      sha256 "4c2c22b7e9a7849b50f6a5bc8df951c7e11d51e38bc62dd631619f60d0da49ee"
    end
    on_intel do
      url "https://github.com/jandubois/git-lint/releases/download/v0.12.0/git-lint-linux-amd64"
      sha256 "f9c70900c866fc4b9243b7a73e1b27e7234e99cb7e2ab266b698fecaf0a40f67"
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
