class GitLint < Formula
  desc "Check git repo health and fix violations"
  homepage "https://github.com/jandubois/git-lint"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/git-lint/releases/download/v0.8.0/git-lint-darwin-arm64"
      sha256 "71a02384c8481662b429f7fe82860af271836edeb5b84a97035c4198b95efe1c"
    end
    on_intel do
      url "https://github.com/jandubois/git-lint/releases/download/v0.8.0/git-lint-darwin-amd64"
      sha256 "591e1e76e1561b6f9454422d390a12b4dd00bffe0412fa7252e620f4bb37d443"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/git-lint/releases/download/v0.8.0/git-lint-linux-arm64"
      sha256 "0c89e0e065041c92ecc8791991dd4069d4fa36eb1c9d4cd05ffc68ce47146d0f"
    end
    on_intel do
      url "https://github.com/jandubois/git-lint/releases/download/v0.8.0/git-lint-linux-amd64"
      sha256 "b04aeded6c0ad9c254d49e493f062c2abcba388f5cc06f11674012817d100bbc"
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
