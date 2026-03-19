class GitLint < Formula
  desc "Check git repo health and fix violations"
  homepage "https://github.com/jandubois/git-lint"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/git-lint/releases/download/v0.9.0/git-lint-darwin-arm64"
      sha256 "3d65ed4cdd38d960814dcb94717b1d1c2c26554dc4055635e907e98eb351f73c"
    end
    on_intel do
      url "https://github.com/jandubois/git-lint/releases/download/v0.9.0/git-lint-darwin-amd64"
      sha256 "a11896d319440b02217616972060b268a1bd3b93305aa8474d414d572f6ee681"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/git-lint/releases/download/v0.9.0/git-lint-linux-arm64"
      sha256 "f3d3e82f8b931375569856f3aa7a3f750db6146d42040144142fbb703769a4c2"
    end
    on_intel do
      url "https://github.com/jandubois/git-lint/releases/download/v0.9.0/git-lint-linux-amd64"
      sha256 "bf1f501c6f45ae5201c6c8a3ac144b95ff104eb34e00eadf88c7c1f1409c4f35"
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
