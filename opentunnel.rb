class Opentunnel < Formula
  desc "Public URLs for local services, end-to-end encrypted"
  homepage "https://opentunnel.xyz"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.1.5/opentunnel-darwin-arm64.tar.gz"
      sha256 "a56a308d6b8ccd5bf5d3bfc66f60c9b66af7a2bfe29b7ebf14ee2cc664fa85e9"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.1.5/opentunnel-darwin-x64.tar.gz"
      sha256 "85e9040a7ab1d154cc59d5489db6e20c9cdfe2fa1e5af90224c2a9298d48192d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.1.5/opentunnel-linux-arm64.tar.gz"
      sha256 "baa104b6ca5bff3997fa79c8819cef36673d4e45c3e6c551e20e915d3fc565f5"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.1.5/opentunnel-linux-x64.tar.gz"
      sha256 "63f4eb7cac5605bbf2153ac85065f6cfdd667b089f753235c5a83cf4da9d69f2"
    end
  end

  def install
    bin.install "opentunnel"
  end

  test do
    system bin/"opentunnel", "--version"
  end
end
