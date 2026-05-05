class GitLint < Formula
  desc "Check git repo health and fix violations"
  homepage "https://github.com/jandubois/git-lint"
  version "0.14.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/git-lint/releases/download/v0.14.0/git-lint-darwin-arm64"
      sha256 "999ab722f5d1470be44e45fab9b36b31cef574d17b7b6083f141d0f9e10d3004"
    end
    on_intel do
      url "https://github.com/jandubois/git-lint/releases/download/v0.14.0/git-lint-darwin-amd64"
      sha256 "0c9f497af24941e5b38232118a3747057796649459020f7aabaed936e6d6dc74"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/git-lint/releases/download/v0.14.0/git-lint-linux-arm64"
      sha256 "504446e749073406a8ea065b7de237c3dd0ab93a6124d3a196c8c7d0dcf07738"
    end
    on_intel do
      url "https://github.com/jandubois/git-lint/releases/download/v0.14.0/git-lint-linux-amd64"
      sha256 "b32a8e94f6eec7069c5b2a34fa38d86dc8818bb3828bd6d83cfbadc37de8ed9c"
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
