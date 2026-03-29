class Nobin < Formula
  desc "Scan a directory tree for files containing non-printable or invisible characters"
  homepage "https://github.com/jandubois/nobin"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/nobin/releases/download/v0.9.0/nobin-darwin-arm64"
      sha256 "4a34c34ccddc409c434d4c2b56e0908b1c4faf09b7b5c9a74916c0060f8f4639"
    end
    on_intel do
      url "https://github.com/jandubois/nobin/releases/download/v0.9.0/nobin-darwin-amd64"
      sha256 "ca0816870c760152aed38670757e304f89567d012179538963c2c52bd3154d3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/nobin/releases/download/v0.9.0/nobin-linux-arm64"
      sha256 "8df51b4734d69f7992442da1993d9fd0b5f5abd6bcf4f9f9a031f545ef7d5a46"
    end
    on_intel do
      url "https://github.com/jandubois/nobin/releases/download/v0.9.0/nobin-linux-amd64"
      sha256 "ba28fe80cd844c68a2007c46062fb8bd39d906be6e8da2d55b295c9a0ba090f3"
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
