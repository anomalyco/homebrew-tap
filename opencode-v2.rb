# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.0.15"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.15/opencode-darwin-arm64.zip"
      sha256 "4090acfb5a854d8c1c59250b62da8aad9c17872c793e0033c0a55adc3f4739da"
    else
      url "https://opencode.ai/files/bin/2.0.15/opencode-darwin-x64-baseline.zip"
      sha256 "42d71f802ef05d77e3d5af66fbf43ae259fe67b5d481791c641dc1629c28febd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.15/opencode-linux-arm64.tar.gz"
      sha256 "731b8e3f5b330336b0999e49978ba2340ba7645af33f4ce90027d95d25fa9b27"
    else
      url "https://opencode.ai/files/bin/2.0.15/opencode-linux-x64-baseline.tar.gz"
      sha256 "71c15a7e31dcb0d4ab9a5c9081f3afe37db4bc7bce623275b42401a4a3a82034"
    end
  end

  def install
    bin.install "opencode"
  end
end
