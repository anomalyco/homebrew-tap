# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.0.30"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.30/opencode-darwin-arm64.zip"
      sha256 "1d5cb2a30272f070c9c55b6d8895bda1d1929e7702f5e6beb02b5d3a17de8961"
    else
      url "https://opencode.ai/files/bin/2.0.30/opencode-darwin-x64-baseline.zip"
      sha256 "18571063ec2d50b2c0d5bb692c02def28384da1f2f6d82cdce6205213e24fd44"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.30/opencode-linux-arm64.tar.gz"
      sha256 "5211e95cb617eb04e1a5a0fa32e2e0d11a248b3bc7ed105d84cad761cc66ab7b"
    else
      url "https://opencode.ai/files/bin/2.0.30/opencode-linux-x64-baseline.tar.gz"
      sha256 "b184222cb56e747dc1503ab6e1788f48975d6cdd7511de56464b5757d1fff586"
    end
  end

  def install
    bin.install "opencode"
  end
end
