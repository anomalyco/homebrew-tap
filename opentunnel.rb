class Opentunnel < Formula
  desc "Public URLs for local services, end-to-end encrypted"
  homepage "https://opentunnel.xyz"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.1.4/opentunnel-darwin-arm64.tar.gz"
      sha256 "81aa49dccd9c11543992e2c8814e3b9d5a3f90f5aafa9c271cda1f72897f75cd"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.1.4/opentunnel-darwin-x64.tar.gz"
      sha256 "b49ee378ed9cd1097dedf20f3fcf685678e85b037b7fff0ee24bba070a2d0789"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.1.4/opentunnel-linux-arm64.tar.gz"
      sha256 "db09fc4da333f9b1e97ab2893f20e3243c2bb901e13ec4b129c48299ef0ac6f0"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.1.4/opentunnel-linux-x64.tar.gz"
      sha256 "e1c1969c50394a733403d7cb91117998a61be5d6a35ed5aa30582bb432d1b5e0"
    end
  end

  def install
    bin.install "opentunnel"
  end

  test do
    system bin/"opentunnel", "--version"
  end
end
