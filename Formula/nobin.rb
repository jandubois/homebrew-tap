class Nobin < Formula
  desc "Scan a directory tree for files containing non-printable or invisible characters"
  homepage "https://github.com/jandubois/nobin"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/nobin/releases/download/v0.2.0/nobin-darwin-arm64"
      sha256 "81faa745123dc312653daa53fca00efd3d2903dc81066cac39975f818411daec"
    end
    on_intel do
      url "https://github.com/jandubois/nobin/releases/download/v0.2.0/nobin-darwin-amd64"
      sha256 "8f1f82c5ab037c89ead9d36a68677d91eec36eea9f3fdef7e151ed84659f65b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/nobin/releases/download/v0.2.0/nobin-linux-arm64"
      sha256 "c491f483cee91979f8f6e8dcb5da10b646b82631cb0c6e15ae9660e80d3a04d9"
    end
    on_intel do
      url "https://github.com/jandubois/nobin/releases/download/v0.2.0/nobin-linux-amd64"
      sha256 "ddbae7ac7e2b13758d12dfa8a00d8f6b7940a292a54c6cc50778dee05a2b4d03"
    end
  end

  def install
    binary = Dir.glob("nobin*").first
    bin.install binary => "nobin"
  end

  test do
    system bin/"nobin", "--help"
  end
end
