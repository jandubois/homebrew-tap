class Nobin < Formula
  desc "Scan a directory tree for files containing non-printable or invisible characters"
  homepage "https://github.com/jandubois/nobin"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/nobin/releases/download/v0.5.0/nobin-darwin-arm64"
      sha256 "a1c3617ee42c909d36ae41beb5f2c092225243791207e8a63754803c67c98141"
    end
    on_intel do
      url "https://github.com/jandubois/nobin/releases/download/v0.5.0/nobin-darwin-amd64"
      sha256 "5023e699c19501db7d4a48deed628223878a2a1cb76a2be744a6d0fc80954f3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/nobin/releases/download/v0.5.0/nobin-linux-arm64"
      sha256 "fb9bde9e3e9784941725e7fa645be07420768d1c5f8d836337f0024c019ac15e"
    end
    on_intel do
      url "https://github.com/jandubois/nobin/releases/download/v0.5.0/nobin-linux-amd64"
      sha256 "fad2c8a30114e4731d2ed65c2586aa989ed5e13e08d92f1101543126af668c00"
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
