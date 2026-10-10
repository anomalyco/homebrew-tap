class Opentunnel < Formula
  desc "Public URLs for local services, end-to-end encrypted"
  homepage "https://opentunnel.xyz"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.5.0/opentunnel-darwin-arm64.tar.gz"
      sha256 "30d624252b95d1ff5ed344774565e6ce55ce2949a8f550681a491ba641ff0a86"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.5.0/opentunnel-darwin-x64.tar.gz"
      sha256 "17c11b2e30ddad7ed25313ac358642a70c9296efa45d61f5fd9f130e0b692942"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.5.0/opentunnel-linux-arm64.tar.gz"
      sha256 "ffefc6bfe0327ba47f4ad06d55f369838b1b84a93af8d5868a90e3f4e8e7bf39"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.5.0/opentunnel-linux-x64.tar.gz"
      sha256 "9c2b95237475c149ce7ee933d1e22f1742e32193f1498638fa80b9d47c9bd81c"
    end
  end

  def install
    bin.install "opentunnel"
  end

  test do
    system bin/"opentunnel", "--version"
  end
end
