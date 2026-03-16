class Nobin < Formula
  desc "Scan a directory tree for files containing non-printable or invisible characters"
  homepage "https://github.com/jandubois/nobin"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/nobin/releases/download/v0.7.0/nobin-darwin-arm64"
      sha256 "884ba5293951a58847d262e77eb85f0a233ad81b20902ac4872ba370d76efcbf"
    end
    on_intel do
      url "https://github.com/jandubois/nobin/releases/download/v0.7.0/nobin-darwin-amd64"
      sha256 "e793ee02752eca5c4ac170968e20f48f4169616989623c4ad6c4b4f3fc974295"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/nobin/releases/download/v0.7.0/nobin-linux-arm64"
      sha256 "7ebd45d0a302112c89b5f69d661091a1649a416400516fd1c9423aa1bde7f596"
    end
    on_intel do
      url "https://github.com/jandubois/nobin/releases/download/v0.7.0/nobin-linux-amd64"
      sha256 "fb758949777da05fecc75e9f5ac66f8799f1bd2d4cd16774b3aa024a605a1035"
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
