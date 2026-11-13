# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.3.0"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.3.0/opencode-darwin-arm64.zip"
      sha256 "7907df2b12720a840fbb49c5b978b9b82925b6bf75479a5fd216afa8932b6702"
    else
      url "https://opencode.ai/files/bin/2.3.0/opencode-darwin-x64-baseline.zip"
      sha256 "b4985f65e2e4d624ebe5a490df66cbbce06a4146b8ddfab86473f73c2cc57ea2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.3.0/opencode-linux-arm64.tar.gz"
      sha256 "3207fb5cdec448d479242c0f1a14f4f7bdfcad3a79209b5eb8f9003725e93711"
    else
      url "https://opencode.ai/files/bin/2.3.0/opencode-linux-x64-baseline.tar.gz"
      sha256 "fc0f81522aceeabac47693d88389efa2bc517ce74c2c38fd6967819fcc6e4d3b"
    end
  end

  def install
    bin.install "opencode"
  end
end
