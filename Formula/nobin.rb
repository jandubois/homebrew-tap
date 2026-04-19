class Nobin < Formula
  desc "Scan a directory tree for files containing non-printable or invisible characters"
  homepage "https://github.com/jandubois/nobin"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/nobin/releases/download/v0.12.0/nobin-darwin-arm64"
      sha256 "292085ee2f59fdfbb475c287b0381c5ca84cd32e48852532c20ae25b5ba3898f"
    end
    on_intel do
      url "https://github.com/jandubois/nobin/releases/download/v0.12.0/nobin-darwin-amd64"
      sha256 "632fe5dc16450e11100a7d3cbd66d4c9dbbb5a6483e8eca5c2148a34b8445332"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/nobin/releases/download/v0.12.0/nobin-linux-arm64"
      sha256 "fbacf541b34a05beddaa2c2cf1b3207a42593bb9e45e36a05ed399989dd5a364"
    end
    on_intel do
      url "https://github.com/jandubois/nobin/releases/download/v0.12.0/nobin-linux-amd64"
      sha256 "006442203972ab04a297d069cf940c92b3610c72a3bff5556bcfc2d61862e128"
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
