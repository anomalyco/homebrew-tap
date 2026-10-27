# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.2.0"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.2.0/opencode-darwin-arm64.zip"
      sha256 "c71b1cd96541539ad38e2a75377d2f43d2a27567289a14371a182e9a0800db3d"
    else
      url "https://opencode.ai/files/bin/2.2.0/opencode-darwin-x64-baseline.zip"
      sha256 "bda15562402475e891d39de5938de7ce052a245f9fd926ab72d32f55b1e26ac3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.2.0/opencode-linux-arm64.tar.gz"
      sha256 "1f1ce0fc07b9245a815ffa9d652dbb80e6b0f07e5bf74ea87d2b1c0339fbac52"
    else
      url "https://opencode.ai/files/bin/2.2.0/opencode-linux-x64-baseline.tar.gz"
      sha256 "6d597970a8cc448f1b9a9f645532584b339dd3ab9583bb5f063f13d83e54768f"
    end
  end

  def install
    bin.install "opencode"
  end
end
