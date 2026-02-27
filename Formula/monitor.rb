class Monitor < Formula
  desc "Personal infrastructure monitoring with self-describing probes"
  homepage "https://github.com/jandubois/monitor"
  version "0.4.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jandubois/monitor/releases/download/v0.4.3/monitor-darwin-arm64"
      sha256 "c33fcec5049716fe825ea686e70b51a99e00240728585102525d673426749aba"
    end
    on_intel do
      url "https://github.com/jandubois/monitor/releases/download/v0.4.3/monitor-darwin-amd64"
      sha256 "a081dbc92905ae40166ff23e631617dbc1d7c116f20cb0f5322e619ea36f9dfa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jandubois/monitor/releases/download/v0.4.3/monitor-linux-arm64"
      sha256 "dbc65f2cfd9975cc73886653fb9df278ec8a4b0e77bf2f70bc8b9cdcd1bbc857"
    end
    on_intel do
      url "https://github.com/jandubois/monitor/releases/download/v0.4.3/monitor-linux-amd64"
      sha256 "ec015085607031e946c96224d0c1e08d0d8337502585049eec00c91d9a1de9e2"
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
