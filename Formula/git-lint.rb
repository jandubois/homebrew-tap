class GitLint < Formula
  desc "Check git repo health and fix violations"
  homepage "https://github.com/jandubois/git-lint"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/git-lint/releases/download/v0.13.0/git-lint-darwin-arm64"
      sha256 "2f1983c08ade1fb2722362db25176064be31882d2e8197f6af2db437325029a0"
    end
    on_intel do
      url "https://github.com/jandubois/git-lint/releases/download/v0.13.0/git-lint-darwin-amd64"
      sha256 "a8165460883f581093117db5c3196bbc25f0a938e1c7adf37a281453429c3808"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/git-lint/releases/download/v0.13.0/git-lint-linux-arm64"
      sha256 "bfe6a79d3521b86dc7bd5d488f208cd9d257be20fb17cea1661fcec6db6a4767"
    end
    on_intel do
      url "https://github.com/jandubois/git-lint/releases/download/v0.13.0/git-lint-linux-amd64"
      sha256 "3bc0e24fbe37eb73e954b5d740e32dbccfdc03d56763f42b4f27d95482ea2552"
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
