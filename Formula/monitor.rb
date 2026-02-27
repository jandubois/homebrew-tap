class Monitor < Formula
  desc "Personal infrastructure monitoring with self-describing probes"
  homepage "https://github.com/jandubois/monitor"
  version "0.4.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/monitor/releases/download/v0.4.2/monitor-darwin-arm64"
      sha256 "a6a3a3923b0c5ca8bc22b30320b84f0e908d75425c50d9acbd1e05fb57cd2fb3"
    end
    on_intel do
      url "https://github.com/jandubois/monitor/releases/download/v0.4.2/monitor-darwin-amd64"
      sha256 "79fd7815572d9ef3b6095ed1bc2d806ccc9f372b014a66987131b300ec90287f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/monitor/releases/download/v0.4.2/monitor-linux-arm64"
      sha256 "10592fcd1400716ac600a4c9d4bdc0bd67d021bf2ef484fcbe8de5dd30f0e864"
    end
    on_intel do
      url "https://github.com/jandubois/monitor/releases/download/v0.4.2/monitor-linux-amd64"
      sha256 "05c42bd2dbc62b160b3e39fe7129f837d2a08830f6d330a358749722f741cff1"
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
