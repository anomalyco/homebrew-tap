# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.0.21"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.21/opencode-darwin-arm64.zip"
      sha256 "41caebd166aa1a72bb85c2e9a3ca81c6ff3170af1cbef8b7b07f92f19adb6840"
    else
      url "https://opencode.ai/files/bin/2.0.21/opencode-darwin-x64-baseline.zip"
      sha256 "3aa5f9b0e5108f4fb641b5e32ab2f573b92f6b7cfb9c72376a4d059d80b6e6e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.21/opencode-linux-arm64.tar.gz"
      sha256 "16c354810ef5844da2971b7dd103ccd18677bc1489755f788ac09cab72b0824d"
    else
      url "https://opencode.ai/files/bin/2.0.21/opencode-linux-x64-baseline.tar.gz"
      sha256 "8ef5c24debedefbb7b5e13b807699c8b2b8097d5ca703184188cefd64e5f3472"
    end
  end

  def install
    bin.install "opencode"
  end
end
