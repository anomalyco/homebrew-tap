# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.2.7"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.2.7/opencode-darwin-arm64.zip"
      sha256 "811c42be9cad489ea8c411ead49e06f691deee4957ba9a0a56a159a7d6c1abdc"
    else
      url "https://opencode.ai/files/bin/2.2.7/opencode-darwin-x64-baseline.zip"
      sha256 "7830c9ce3945ad9fee792f603d4c9abcbb041b5cabafb51ce3c40da1dad5b435"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.2.7/opencode-linux-arm64.tar.gz"
      sha256 "c1682057f0815cb2abdd6e00305f1146ebaf1c167f0335cdb74ddc80008120e7"
    else
      url "https://opencode.ai/files/bin/2.2.7/opencode-linux-x64-baseline.tar.gz"
      sha256 "89a6cee227b54bc011179c528a5e63176032462b1a5e21723b616801cddc2ca7"
    end
  end

  def install
    bin.install "opencode"
  end
end
