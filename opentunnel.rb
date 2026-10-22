class Opentunnel < Formula
  desc "Public URLs for local services, end-to-end encrypted"
  homepage "https://opentunnel.xyz"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.6.0/opentunnel-darwin-arm64.tar.gz"
      sha256 "a4cb2afd550e9c4e856f363ec6fbe24e8031046de953aa24a2203eaf29763097"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.6.0/opentunnel-darwin-x64.tar.gz"
      sha256 "9096d026dd86724424604eea39531c07040e2b2b1166c17445d83c73dfb86fe1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.6.0/opentunnel-linux-arm64.tar.gz"
      sha256 "fd8dacbe98c59dfc63b905172e6a89bfdcde7d9ff38a28a1cb51fad497347f42"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.6.0/opentunnel-linux-x64.tar.gz"
      sha256 "f74b28b57026ea597be2e4b814b25ee4012999258872add4a41be33079c1f4c8"
    end
  end

  def install
    bin.install "opentunnel"
  end

  test do
    system bin/"opentunnel", "--version"
  end
end
