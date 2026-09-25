# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.0.18"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.18/opencode-darwin-arm64.zip"
      sha256 "ea3a69433e33ee1fe3e1924de800aa7f28a32e2e1af1812366e88361a46600e2"
    else
      url "https://opencode.ai/files/bin/2.0.18/opencode-darwin-x64-baseline.zip"
      sha256 "50503bcda1ac7ca4a4075fa4fe3fc84cb54afac960cf2fa0ee5fef01d752d366"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.18/opencode-linux-arm64.tar.gz"
      sha256 "f46253f0ff5eff0c1751d3b734ede55cc60d932d60af81d061d03745f9998082"
    else
      url "https://opencode.ai/files/bin/2.0.18/opencode-linux-x64-baseline.tar.gz"
      sha256 "5db6a93cadec1704b150e3cc807b95e0d6366651c906b0003fb994fba05b7b40"
    end
  end

  def install
    bin.install "opencode"
  end
end
