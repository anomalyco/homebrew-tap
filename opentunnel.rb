class Opentunnel < Formula
  desc "Public URLs for local services, end-to-end encrypted"
  homepage "https://opentunnel.xyz"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.6.1/opentunnel-darwin-arm64.tar.gz"
      sha256 "c7e8b90c8b8ceb143b35e05faac1ea9d456bc066d7eee2511abd38038c9ef24b"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.6.1/opentunnel-darwin-x64.tar.gz"
      sha256 "56db23af81964ac46a4a2005bfd642771efdfdda37504c9be3cee05569f53f85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.6.1/opentunnel-linux-arm64.tar.gz"
      sha256 "2d181137e4f5f02f11eae2c4f71e6dea943362ad8159a9ca759f714ab5544e73"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.6.1/opentunnel-linux-x64.tar.gz"
      sha256 "862b64e7a7947b46ed9f66be3f6e2ae4324c60d6cf53ec504a2614552669e8f9"
    end
  end

  def install
    bin.install "opentunnel"
  end

  test do
    system bin/"opentunnel", "--version"
  end
end
