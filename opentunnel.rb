class Opentunnel < Formula
  desc "Public URLs for local services, end-to-end encrypted"
  homepage "https://opentunnel.xyz"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.4.0/opentunnel-darwin-arm64.tar.gz"
      sha256 "5ced0d8db44b57bf50f5d47aa541d7f13740dde6772a98c073c8ca7086df879d"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.4.0/opentunnel-darwin-x64.tar.gz"
      sha256 "caff011996ba0ecfc7a4f62eb73ae9ae8352c9016d031b79c73569f97f9ed7ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.4.0/opentunnel-linux-arm64.tar.gz"
      sha256 "617df6f5442c0260b348d9f5eb6c73df7b5e02093aa93db44bae434ec51d5f69"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.4.0/opentunnel-linux-x64.tar.gz"
      sha256 "61b65897f4d709c0441f35a324d61843b9f40fbfc72562b923349f702aba7268"
    end
  end

  def install
    bin.install "opentunnel"
  end

  test do
    system bin/"opentunnel", "--version"
  end
end
