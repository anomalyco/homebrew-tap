class Opentunnel < Formula
  desc "Public URLs for local services, end-to-end encrypted"
  homepage "https://opentunnel.xyz"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.7.0/opentunnel-darwin-arm64.tar.gz"
      sha256 "31035188ef6e45f5e4387ae41f4e662efc1687c36f10450eb72ae2658075698b"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.7.0/opentunnel-darwin-x64.tar.gz"
      sha256 "7b6e334baafee3719246649f00d2089ff6498af266c42a7cad8e1fdf41735229"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.7.0/opentunnel-linux-arm64.tar.gz"
      sha256 "c689b775740166633172ce677eac42d933a01628fcd25e2f50c59bb6665cc670"
    end
    on_intel do
      url "https://github.com/anomalyco/opentunnel/releases/download/v0.7.0/opentunnel-linux-x64.tar.gz"
      sha256 "d25186660cd4ea9817b873aae6702104add157ddc2894cb2e2b266d441d7cc90"
    end
  end

  def install
    bin.install "opentunnel"
  end

  test do
    system bin/"opentunnel", "--version"
  end
end
