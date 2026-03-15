class Nobin < Formula
  desc "Scan a directory tree for files containing non-printable or invisible characters"
  homepage "https://github.com/jandubois/nobin"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/nobin/releases/download/v0.3.0/nobin-darwin-arm64"
      sha256 "0db2c19deba9a95479b5acfc753260f1bcca62ea8cca7534c7120e2205c29c61"
    end
    on_intel do
      url "https://github.com/jandubois/nobin/releases/download/v0.3.0/nobin-darwin-amd64"
      sha256 "901ecc379f8e56680eb7ebc10505a52aaa2bd2bb6dd2ae9da421c77bad89c433"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/nobin/releases/download/v0.3.0/nobin-linux-arm64"
      sha256 "86ad119138d7e3e5b3ec6eae7136d05ada68c70c4b4ae832e1dcd899a2142452"
    end
    on_intel do
      url "https://github.com/jandubois/nobin/releases/download/v0.3.0/nobin-linux-amd64"
      sha256 "4343f673248b32e573e377e33ec2c2a52e2405626c4d8b24a2e6b6ad46ce365e"
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
