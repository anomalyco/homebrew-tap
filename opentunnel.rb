class Opentunnel < Formula
  desc "Public URLs for local services, end-to-end encrypted"
  homepage "https://opentunnel.xyz"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.6.2/opentunnel-darwin-arm64.tar.gz"
      sha256 "3f4cf4d316db0e341b2995fd5cd44ba79a78aaee534f32199969152397c9e504"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.6.2/opentunnel-darwin-x64.tar.gz"
      sha256 "5f4629b571b53df5669a18ed1f395d2fb24ad2c8fd1ad5d3637dbe427f26e6f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.6.2/opentunnel-linux-arm64.tar.gz"
      sha256 "3136e3b66157db18e2f2b86bdcbf1c88016b2daeee70c0396a5c9d188eb6f293"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.6.2/opentunnel-linux-x64.tar.gz"
      sha256 "ce9b654b686beb0d23c87be9816ec71da950f41a4ddc0c8f33396eef871dc861"
    end
  end

  def install
    bin.install "opentunnel"
  end

  test do
    system bin/"opentunnel", "--version"
  end
end
