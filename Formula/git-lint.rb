class GitLint < Formula
  desc "Check git repo health and fix violations"
  homepage "https://github.com/jandubois/git-lint"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/git-lint/releases/download/v0.10.0/git-lint-darwin-arm64"
      sha256 "21906ae4ac3a3df7680e646fa16067cd6f626238c1e241ec196efb58562b2b98"
    end
    on_intel do
      url "https://github.com/jandubois/git-lint/releases/download/v0.10.0/git-lint-darwin-amd64"
      sha256 "2fb0240b06adeab75c3686ec126d5d5a30e4eb88d5a775aac6ae61a9a1c11827"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/git-lint/releases/download/v0.10.0/git-lint-linux-arm64"
      sha256 "e14da22cccb7c6e1575d28861ff15e2119a59808554ac15248a7fb439b03aee3"
    end
    on_intel do
      url "https://github.com/jandubois/git-lint/releases/download/v0.10.0/git-lint-linux-amd64"
      sha256 "080c8f384207b03f3b051389a8272cd76252f79fdac64a01612c0290b141406e"
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
