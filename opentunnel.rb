class Opentunnel < Formula
  desc "Public URLs for local services, end-to-end encrypted"
  homepage "https://opentunnel.xyz"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.2.2/opentunnel-darwin-arm64.tar.gz"
      sha256 "880e5f133ee4d39c07af1a3311681d3d809b64d720670bb8f0c737394dc9c103"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.2.2/opentunnel-darwin-x64.tar.gz"
      sha256 "ce0c86e02120e95abfe9f9b4d44cfcde2eede238482c2f776652fa77dc9ea07a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.2.2/opentunnel-linux-arm64.tar.gz"
      sha256 "14d51c51f8a1a3abcde5335a73d02bd905282107d8595ded1242ca1885a2b7c7"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.2.2/opentunnel-linux-x64.tar.gz"
      sha256 "6a4ba3ea2a350efa422049c87f480cc68eab414bfde320e04177263179e2ae16"
    end
  end

  def install
    bin.install "opentunnel"
  end

  test do
    system bin/"opentunnel", "--version"
  end
end
