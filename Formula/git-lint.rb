class GitLint < Formula
  desc "Check git repo health and fix violations"
  homepage "https://github.com/jandubois/git-lint"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/git-lint/releases/download/v0.7.0/git-lint-darwin-arm64"
      sha256 "0be0258b9bf35dd89593b86c305f4351cb3c2ce1ba80f74afe6a865e34e4bba8"
    end
    on_intel do
      url "https://github.com/jandubois/git-lint/releases/download/v0.7.0/git-lint-darwin-amd64"
      sha256 "c88b1067830c45a06fa72691fbc7373f071281a94c8d5ae6b3ff540e13416576"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/git-lint/releases/download/v0.7.0/git-lint-linux-arm64"
      sha256 "6736c248b28336ff7f1d41c143bfe451cba27c261b6ad5d7f52543b3bc44d184"
    end
    on_intel do
      url "https://github.com/jandubois/git-lint/releases/download/v0.7.0/git-lint-linux-amd64"
      sha256 "27d50fcee31414b7dc25f30b0a4d2708c472ecc91807ad143521e101635e9849"
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
