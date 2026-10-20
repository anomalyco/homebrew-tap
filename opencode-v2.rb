# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.1.1"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.1.1/opencode-darwin-arm64.zip"
      sha256 "a8b4ab1e95f2b3928cdaec781bac14bb4bd1b1619a41b0d55e6f185490488551"
    else
      url "https://opencode.ai/files/bin/2.1.1/opencode-darwin-x64-baseline.zip"
      sha256 "3a3640c05d9cba3305b67369ae448cbbdabe4f130e1dbdff5b8985386525096a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.1.1/opencode-linux-arm64.tar.gz"
      sha256 "7f387077e0ba7d26964d19b9b31fac784ec4edb759f2b5fe34878aeb4b0545b1"
    else
      url "https://opencode.ai/files/bin/2.1.1/opencode-linux-x64-baseline.tar.gz"
      sha256 "80d1445a6f782520192a135a33f06183203808ab7839dc88d80030c004f0d3d3"
    end
  end

  def install
    bin.install "opencode"
  end
end
