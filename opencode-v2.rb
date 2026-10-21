# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.1.2"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.1.2/opencode-darwin-arm64.zip"
      sha256 "1051221bbce68e541f432be07d58beb66c1827dae9e04417a49f56115e0e0d4c"
    else
      url "https://opencode.ai/files/bin/2.1.2/opencode-darwin-x64-baseline.zip"
      sha256 "eaa92810b49db00bc92f152f5bfd6d32626cf7f88743c0316cb1d2e31bb759ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.1.2/opencode-linux-arm64.tar.gz"
      sha256 "3ddeab155dd75f36d9fd4f5db80e2392181a4b9f59e347a0361a127244686e94"
    else
      url "https://opencode.ai/files/bin/2.1.2/opencode-linux-x64-baseline.tar.gz"
      sha256 "911e9778fac07559678c5f46d8b130856e237a7f021091509273e81a2dada183"
    end
  end

  def install
    bin.install "opencode"
  end
end
