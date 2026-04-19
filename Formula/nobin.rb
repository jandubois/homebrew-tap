class Nobin < Formula
  desc "Scan a directory tree for files containing non-printable or invisible characters"
  homepage "https://github.com/jandubois/nobin"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/nobin/releases/download/v0.11.0/nobin-darwin-arm64"
      sha256 "982379751c7a243ccd9c906e147264962fcab46534c78c7e583bb6815aca9ca3"
    end
    on_intel do
      url "https://github.com/jandubois/nobin/releases/download/v0.11.0/nobin-darwin-amd64"
      sha256 "6aabf079c560a6e84000945a76ebd9df5ec2d8b34702da671e6b28f4821cf5cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/nobin/releases/download/v0.11.0/nobin-linux-arm64"
      sha256 "fd400ecd6474a589782516124a11f371b5ce2eca6bfdd8e08c655d45deeaebb8"
    end
    on_intel do
      url "https://github.com/jandubois/nobin/releases/download/v0.11.0/nobin-linux-amd64"
      sha256 "c29ccf30b515dd627039eb8d764b0ba0188bcc81856d8dab00a09c4f029d523a"
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
