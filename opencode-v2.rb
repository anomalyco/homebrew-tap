# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.0.25"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.25/opencode-darwin-arm64.zip"
      sha256 "7280822bfb05ce8dce2b3d0584b2945f51c7623d93fc7aa0bcf875d35895d222"
    else
      url "https://opencode.ai/files/bin/2.0.25/opencode-darwin-x64-baseline.zip"
      sha256 "689a5d7e5846072e0b1acd9387b74fa15e63d7bd267fe02cc834f08292ae5b19"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.25/opencode-linux-arm64.tar.gz"
      sha256 "5ac0cb04b8025ea8cd31c4c0b401eb7ee90786c16df09721241a48d95bb4dd02"
    else
      url "https://opencode.ai/files/bin/2.0.25/opencode-linux-x64-baseline.tar.gz"
      sha256 "6d567e3409937ee3b0ca47feda6ff60a7d04f8ef625a9767f058349b1f8b2b43"
    end
  end

  def install
    bin.install "opencode"
  end
end
