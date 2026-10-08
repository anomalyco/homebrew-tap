class Opentunnel < Formula
  desc "Public URLs for local services, end-to-end encrypted"
  homepage "https://opentunnel.xyz"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.1.4/opentunnel-darwin-arm64.tar.gz"
      sha256 "7e8ab95ac14a54e173722376e0856c220ad9d945efdae9db9888e8c2a8d8fcb4"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.1.4/opentunnel-darwin-x64.tar.gz"
      sha256 "b6015d30db66a0d1e38d786f0e6c16d5080bc6f0c463aaa507c7cafa34a94ac5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.1.4/opentunnel-linux-arm64.tar.gz"
      sha256 "a2d9ca2bf20c5dfa07f61bd81e172a263bc221162d14998f283c0ef8219e0b20"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.1.4/opentunnel-linux-x64.tar.gz"
      sha256 "38667d36d72da6d28384cb4301f8db79ba60fe0386b074d4cbb8e8fa4cc8a915"
    end
  end

  def install
    bin.install "opentunnel"
  end

  test do
    system bin/"opentunnel", "--version"
  end
end
