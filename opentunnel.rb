class Opentunnel < Formula
  desc "Public URLs for local services, end-to-end encrypted"
  homepage "https://opentunnel.xyz"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.5.3/opentunnel-darwin-arm64.tar.gz"
      sha256 "11c2233247d6790543c75f85901eaf05baa504597de2a1c98c4ddb816bb3027a"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.5.3/opentunnel-darwin-x64.tar.gz"
      sha256 "7df28403a61a8d0b7e8167018cf480fd483fff568afc133953a3b894ceb17f7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.5.3/opentunnel-linux-arm64.tar.gz"
      sha256 "92a56ad695be01e0ebe7de59a7de6db0a4bf5b29fdf9662555e4bec41588ba21"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.5.3/opentunnel-linux-x64.tar.gz"
      sha256 "1da684ed261f946a757d3016806eff585243cc40c0cbf59cb7e893976c1d2dd3"
    end
  end

  def install
    bin.install "opentunnel"
  end

  test do
    system bin/"opentunnel", "--version"
  end
end
