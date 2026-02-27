class Monitor < Formula
  desc "Personal infrastructure monitoring with self-describing probes"
  homepage "https://github.com/jandubois/monitor"
  version "0.4.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/monitor/releases/download/v0.4.4/monitor-darwin-arm64"
      sha256 "b9413cf7fd725f8701897232f56c5c45b82a5c8984d1cbc4935694ec86b2273e"
    end
    on_intel do
      url "https://github.com/jandubois/monitor/releases/download/v0.4.4/monitor-darwin-amd64"
      sha256 "85c4851211b65c6fc312a9670674d9f69bcc9215c5b5a33cf90cd4b501ade1ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/monitor/releases/download/v0.4.4/monitor-linux-arm64"
      sha256 "e447d523e7f8ce6502a8458b0ddd9734dd1a06bf69784e80b8350811beda2b98"
    end
    on_intel do
      url "https://github.com/jandubois/monitor/releases/download/v0.4.4/monitor-linux-amd64"
      sha256 "b5d2e77db0523474afe5556e12be6be1d298125144b92cd9e424a913c6974652"
    end
  end

  def install
    binary = Dir.glob("monitor*").first
    bin.install binary => "monitor"
  end

  test do
    system bin/"monitor", "--help"
  end
end
