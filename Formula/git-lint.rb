class GitLint < Formula
  desc "Check git repo health and fix violations"
  homepage "https://github.com/jandubois/git-lint"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/git-lint/releases/download/v0.5.0/git-lint-darwin-arm64"
      sha256 "c82b172dd4fd6b5d6ece1e5eb7b17fffc59de4a9258f2828018638a5f0ac8099"
    end
    on_intel do
      url "https://github.com/jandubois/git-lint/releases/download/v0.5.0/git-lint-darwin-amd64"
      sha256 "c41735ace9fbc7f69c162d3ee1134b8c175dfc788ac076102a72f049bc4e14bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/git-lint/releases/download/v0.5.0/git-lint-linux-arm64"
      sha256 "f8f783e887ca8bc1de661488ad3d1164a2788779f11134619242dba8c727db7b"
    end
    on_intel do
      url "https://github.com/jandubois/git-lint/releases/download/v0.5.0/git-lint-linux-amd64"
      sha256 "8a103e51e51e38eca7fe5f28401fee8129e9fbdfe25027bd4c40aac410099364"
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
