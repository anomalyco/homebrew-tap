class Opentunnel < Formula
  desc "Public URLs for local services, end-to-end encrypted"
  homepage "https://opentunnel.xyz"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.3.0/opentunnel-darwin-arm64.tar.gz"
      sha256 "936da191f40dceb011b33298dd72c893143d1524b59a6fe2d6e39beafb48609a"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.3.0/opentunnel-darwin-x64.tar.gz"
      sha256 "9399434ba22d061235285641fcd657b03a663335de1af33ab5629b1a68cb48fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.3.0/opentunnel-linux-arm64.tar.gz"
      sha256 "b38d17c7971c9b08cafa2ea0105fa056ac2fe83a796c8b0486a033c4286554de"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.3.0/opentunnel-linux-x64.tar.gz"
      sha256 "59c4c2adacfbfb525b5a9a5a79dc8af5514cbfcd7cc186bd7d36d8caa1ffdb27"
    end
  end

  def install
    bin.install "opentunnel"
  end

  test do
    system bin/"opentunnel", "--version"
  end
end
