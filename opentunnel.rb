class Opentunnel < Formula
  desc "Public URLs for local services, end-to-end encrypted"
  homepage "https://opentunnel.xyz"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.5.1/opentunnel-darwin-arm64.tar.gz"
      sha256 "04f690092d45a46b35446f15adabb957adca62943241517a9c2cf99744943eba"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.5.1/opentunnel-darwin-x64.tar.gz"
      sha256 "d2d93ed3837a06eecf258c33db7e85b8d82869ea1a044c2c027d2d1910dd7b96"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.5.1/opentunnel-linux-arm64.tar.gz"
      sha256 "b52b43f90ac253a7b4b479e22f2fcd20a981915da0d66abd02f1f94dd9512dbb"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.5.1/opentunnel-linux-x64.tar.gz"
      sha256 "8dfeb0eac9d48e02f193d0cec64b09554654882b9c5c9e4a417d2d144e626b03"
    end
  end

  def install
    bin.install "opentunnel"
  end

  test do
    system bin/"opentunnel", "--version"
  end
end
