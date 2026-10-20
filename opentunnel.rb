class Opentunnel < Formula
  desc "Public URLs for local services, end-to-end encrypted"
  homepage "https://opentunnel.xyz"
  version "0.5.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.5.4/opentunnel-darwin-arm64.tar.gz"
      sha256 "984a63b46bf53f0b100fd1c4b705a119939df504e681af1490a8b3aed5a1d335"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.5.4/opentunnel-darwin-x64.tar.gz"
      sha256 "b4db94da258ab0217778d8b2915dcd7879cc55263e8c7dc67b9683f9a77aeb0c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.5.4/opentunnel-linux-arm64.tar.gz"
      sha256 "53bd8e44052f26519df3957ea4e5bce9745d0f13aa8090f34824de1b7d219d82"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.5.4/opentunnel-linux-x64.tar.gz"
      sha256 "815e3fd6352178eeecbf317107ca0e0e6d5cd06da0ff166c1827f630570f74e2"
    end
  end

  def install
    bin.install "opentunnel"
  end

  test do
    system bin/"opentunnel", "--version"
  end
end
