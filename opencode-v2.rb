# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.0.20"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.20/opencode-darwin-arm64.zip"
      sha256 "820dd09acc6f7fbe4b73066483fa7036e820c681f3ec33c1fe98fe0d63698265"
    else
      url "https://opencode.ai/files/bin/2.0.20/opencode-darwin-x64-baseline.zip"
      sha256 "1a3e63db70cf993c93b6bd1334c014fec80fef2c654862b3df82b031e2c507b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.20/opencode-linux-arm64.tar.gz"
      sha256 "33ba758e484c82149de8d153305ef0c49539f8fa87e8ead076662e745a89272f"
    else
      url "https://opencode.ai/files/bin/2.0.20/opencode-linux-x64-baseline.tar.gz"
      sha256 "6b6fa605be3653d96d7b956fbd004b6520b36ae3f4adb63c561846ed9a65f3e6"
    end
  end

  def install
    bin.install "opencode"
  end
end
