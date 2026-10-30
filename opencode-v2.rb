# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.2.3"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.2.3/opencode-darwin-arm64.zip"
      sha256 "65db03573e5717e6da245ae3e5c2ffa35915b90689d37c43d4e1ade4d47f55f9"
    else
      url "https://opencode.ai/files/bin/2.2.3/opencode-darwin-x64-baseline.zip"
      sha256 "1166c9dab580dd724a2370dfa3f04b7cb9d7249346c40498f3e4438232f0844e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.2.3/opencode-linux-arm64.tar.gz"
      sha256 "72aac82c021268f6cc9810de913f8d47d05626b1ad974d7f5dc5b087e1ad0f68"
    else
      url "https://opencode.ai/files/bin/2.2.3/opencode-linux-x64-baseline.tar.gz"
      sha256 "ef3aeeaf5522b10d69a3da7bbd6e6d8d259f845833d96b8310767d3407b18a35"
    end
  end

  def install
    bin.install "opencode"
  end
end
