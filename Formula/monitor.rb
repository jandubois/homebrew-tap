class Monitor < Formula
  desc "Personal infrastructure monitoring with self-describing probes"
  homepage "https://github.com/jandubois/monitor"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/monitor/releases/download/v0.4.0/monitor-darwin-arm64"
      sha256 "2ee7151a2c38c198dd30bc82e8e70c028ad5c85823c8f2c5977109fd2427c341"
    end
    on_intel do
      url "https://github.com/jandubois/monitor/releases/download/v0.4.0/monitor-darwin-amd64"
      sha256 "1fb9f09ffc6311f0aca06fce2d1f8167e93dfdc72e9b1f15814ffebef2df4f3c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/monitor/releases/download/v0.4.0/monitor-linux-arm64"
      sha256 "564fe7efcbaf5ffe2cbd8f26f3fbed4beea7d1397ef76625cce5987c63e0b712"
    end
    on_intel do
      url "https://github.com/jandubois/monitor/releases/download/v0.4.0/monitor-linux-amd64"
      sha256 "16f5b70aac98054efaf0cce81f790aad2a07b24ba45dec25088463297053b85d"
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
