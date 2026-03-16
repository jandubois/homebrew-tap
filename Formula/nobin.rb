class Nobin < Formula
  desc "Scan a directory tree for files containing non-printable or invisible characters"
  homepage "https://github.com/jandubois/nobin"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/nobin/releases/download/v0.8.0/nobin-darwin-arm64"
      sha256 "fd65f26d859ce94e2072b84f801575d54865a90ee33635851ad5dd216b3fdc0d"
    end
    on_intel do
      url "https://github.com/jandubois/nobin/releases/download/v0.8.0/nobin-darwin-amd64"
      sha256 "d912b7fb183732f116bc805226793ae0cb36598378f767cf12c155725a904004"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/nobin/releases/download/v0.8.0/nobin-linux-arm64"
      sha256 "24bce5981e08120e211a00560d5997f8bef3522b4eb61702beb807d471564af8"
    end
    on_intel do
      url "https://github.com/jandubois/nobin/releases/download/v0.8.0/nobin-linux-amd64"
      sha256 "62f59f205dc9bb37c54efb5ffeea67e9b4aba3a8e17e1fb0085f24a1d4c1c78c"
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
