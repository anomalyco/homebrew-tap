# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.0.27"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.27/opencode-darwin-arm64.zip"
      sha256 "391b1061dc3f1f4394b7fd19513b2e6ff12f31739ee12f33880506ed6ee008bc"
    else
      url "https://opencode.ai/files/bin/2.0.27/opencode-darwin-x64-baseline.zip"
      sha256 "93f15b891c2d10d5d6a19c10af6f7e542615ea9acf7a3b0ab1a7af611670b8dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.27/opencode-linux-arm64.tar.gz"
      sha256 "28db459fa99c3582b968e39ceccc44254c152492056d40cd2bc548669d68aab7"
    else
      url "https://opencode.ai/files/bin/2.0.27/opencode-linux-x64-baseline.tar.gz"
      sha256 "4bc0688d05941ede36afa12c94b814e3914dcc9159edf6d1953c98b103731bb9"
    end
  end

  def install
    bin.install "opencode"
  end
end
