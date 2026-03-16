class Nobin < Formula
  desc "Scan a directory tree for files containing non-printable or invisible characters"
  homepage "https://github.com/jandubois/nobin"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/nobin/releases/download/v0.6.0/nobin-darwin-arm64"
      sha256 "b57dadf10f90041755756d3fa646cc85ac19092d5d7a46e2767ef102ce16fbfe"
    end
    on_intel do
      url "https://github.com/jandubois/nobin/releases/download/v0.6.0/nobin-darwin-amd64"
      sha256 "b3c5b6a5914d4b89fb02cbf3774203a8a8faea69f9df7320454cbb19f939ebc2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/nobin/releases/download/v0.6.0/nobin-linux-arm64"
      sha256 "2a653f6c88afaa471128c157c03ec05648883ed1e323f03e95a3f326e2d78113"
    end
    on_intel do
      url "https://github.com/jandubois/nobin/releases/download/v0.6.0/nobin-linux-amd64"
      sha256 "2ce14807b51202d0386d664f28345d7fe0f2f5b51d8701d5b3e907fd114da22d"
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
