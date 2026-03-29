class GitLint < Formula
  desc "Check git repo health and fix violations"
  homepage "https://github.com/jandubois/git-lint"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/git-lint/releases/download/v0.11.0/git-lint-darwin-arm64"
      sha256 "39aae7f4bfc5df92d9a1e0b1d358354e9f0ae6d004e5cb833e8c970b05e359cb"
    end
    on_intel do
      url "https://github.com/jandubois/git-lint/releases/download/v0.11.0/git-lint-darwin-amd64"
      sha256 "d711ea09ce92b781906bfd3f2636b3c4c6500991b6b0763811716be301d67d85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/git-lint/releases/download/v0.11.0/git-lint-linux-arm64"
      sha256 "6c54c4ecbce145c961d9343f86bbb317abcaeff1bb372efb5e3dd25b815b1182"
    end
    on_intel do
      url "https://github.com/jandubois/git-lint/releases/download/v0.11.0/git-lint-linux-amd64"
      sha256 "bdd13ff25cc2ce6290f8aeb6ab29f14f5af355deeb163f8f902730ed1c5c42fa"
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
