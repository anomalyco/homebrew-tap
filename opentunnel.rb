class Opentunnel < Formula
  desc "Public URLs for local services, end-to-end encrypted"
  homepage "https://opentunnel.xyz"
  version "0.5.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.5.5/opentunnel-darwin-arm64.tar.gz"
      sha256 "35026737a384d041a129f14a768e5ec03fa6a089d35101bbfc649c9cb7673956"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.5.5/opentunnel-darwin-x64.tar.gz"
      sha256 "a1d410d25a9bb8d97074997353c99cc456a9d662c8b68901e4150ef422909298"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.5.5/opentunnel-linux-arm64.tar.gz"
      sha256 "183f2b3b534c8e34841503186b9bbb858d9b8d3191471cce87d8eee40facb897"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.5.5/opentunnel-linux-x64.tar.gz"
      sha256 "cb51e3b425e6c61708296dc3f973c225a949f957d7c524704da6a01fa8148d85"
    end
  end

  def install
    bin.install "opentunnel"
  end

  test do
    system bin/"opentunnel", "--version"
  end
end
