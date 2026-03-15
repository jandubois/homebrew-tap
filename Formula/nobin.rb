class Nobin < Formula
  desc "Scan a directory tree for files containing non-printable or invisible characters"
  homepage "https://github.com/jandubois/nobin"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/nobin/releases/download/v0.1.0/nobin-darwin-arm64"
      sha256 "239462a66497503bdd65f3be1e10ef42cf76148ffef901633240944e629efbb7"
    end
    on_intel do
      url "https://github.com/jandubois/nobin/releases/download/v0.1.0/nobin-darwin-amd64"
      sha256 "dba05831c2f5629e268f8a7bc805fde3c07d5811283d44bd1181b63e87fdbade"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/nobin/releases/download/v0.1.0/nobin-linux-arm64"
      sha256 "1774945e158842c508f29232b994b93b8796f460f38f402aa3796c778cb851f7"
    end
    on_intel do
      url "https://github.com/jandubois/nobin/releases/download/v0.1.0/nobin-linux-amd64"
      sha256 "282faff81edbf40f1e0e29fc1138b79e9ef9800ae129271b34591a8c408b9c14"
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
