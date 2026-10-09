class Opentunnel < Formula
  desc "Public URLs for local services, end-to-end encrypted"
  homepage "https://opentunnel.xyz"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.4.1/opentunnel-darwin-arm64.tar.gz"
      sha256 "c58ecc9aa2b42fe163ee962b9cfba048e7435b4bae493e4fdec9f4193b0fc454"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.4.1/opentunnel-darwin-x64.tar.gz"
      sha256 "ae8f47350ce16484e1c05e2b6eeedc758eeb2a126d0b3f7493f3cff1191f1158"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.4.1/opentunnel-linux-arm64.tar.gz"
      sha256 "d27c75d4439a434c7d606b5d471db264c9884438d171595e02c68379fb6605d8"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.4.1/opentunnel-linux-x64.tar.gz"
      sha256 "2294fe786601ee6a405089f1e126c7c2010434ba0a61e9700f64bd5b4e8b8933"
    end
  end

  def install
    bin.install "opentunnel"
  end

  test do
    system bin/"opentunnel", "--version"
  end
end
