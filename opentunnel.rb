class Opentunnel < Formula
  desc "Public URLs for local services, end-to-end encrypted"
  homepage "https://opentunnel.xyz"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.1.4/opentunnel-darwin-arm64.tar.gz"
      sha256 "6b7ac4a9843da709561eb6b7fb5cd0daf893f6f39925da669dc4f45ff55a04ed"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.1.4/opentunnel-darwin-x64.tar.gz"
      sha256 "0d6dd0b4b30f695d931ff4cd19091ceaaed16223d933810e35bee0b563cb0d90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.1.4/opentunnel-linux-arm64.tar.gz"
      sha256 "5268aa61e16ec0ae242f9a75d780a84d8b40c15da54c47867a9c21256964571f"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.1.4/opentunnel-linux-x64.tar.gz"
      sha256 "4be205f9f962fec0615a1906c3cfc2b318a1285165c025bbf39276ee20b77b39"
    end
  end

  def install
    bin.install "opentunnel"
  end

  test do
    system bin/"opentunnel", "--version"
  end
end
