class Nobin < Formula
  desc "Scan a directory tree for files containing non-printable or invisible characters"
  homepage "https://github.com/jandubois/nobin"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/nobin/releases/download/v0.10.0/nobin-darwin-arm64"
      sha256 "6ef1d7f3e256e2e4c884228ea7d9a8c78adcdf1ed01e685ae8f5ad12b4323706"
    end
    on_intel do
      url "https://github.com/jandubois/nobin/releases/download/v0.10.0/nobin-darwin-amd64"
      sha256 "ae60b78931a65f6ad8bdabd4d15e1159637f202540b979d2715171134f5a055d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/nobin/releases/download/v0.10.0/nobin-linux-arm64"
      sha256 "2cf357ea35a5c40d83190e0c71732fa75ad6ffbec0cacfb4370e7eea7c5d2ebf"
    end
    on_intel do
      url "https://github.com/jandubois/nobin/releases/download/v0.10.0/nobin-linux-amd64"
      sha256 "d21e3dc733ed36fe5f8f4cd2311efb78979c13742b000c084236b8421d9ff8ce"
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
