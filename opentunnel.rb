class Opentunnel < Formula
  desc "Public URLs for local services, end-to-end encrypted"
  homepage "https://opentunnel.xyz"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.5.2/opentunnel-darwin-arm64.tar.gz"
      sha256 "98ff39f986938768dd6f3ac52d03684a284ade7befae0852b3142671e8227e10"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.5.2/opentunnel-darwin-x64.tar.gz"
      sha256 "15c988b801c98995f8df764544ee1b7f86b9aec7c88449e97059fccd7417026e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.5.2/opentunnel-linux-arm64.tar.gz"
      sha256 "5fba9f04625f3e32faf3fae8354a3fccfff694135ef1d2a68bd860284e02bbbe"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.5.2/opentunnel-linux-x64.tar.gz"
      sha256 "0cb37528bb4ad449c45da9efdff243ea6896163628d7ef0bb41c9cf86d14d885"
    end
  end

  def install
    bin.install "opentunnel"
  end

  test do
    system bin/"opentunnel", "--version"
  end
end
