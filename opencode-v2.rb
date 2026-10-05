# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.0.23"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.23/opencode-darwin-arm64.zip"
      sha256 "c8d545c80abcad9a7409b564bed546a821823d282a43573ecabf7a6763984591"
    else
      url "https://opencode.ai/files/bin/2.0.23/opencode-darwin-x64-baseline.zip"
      sha256 "fb09072bb774515ad4110bc1addfdd478fa6f3dd49d9b49449c8042ba4fc9a01"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.23/opencode-linux-arm64.tar.gz"
      sha256 "6c1fa35b43edd1a2daf54e59a4b35faf9f28fedbb742ed18c516954bac91c0f0"
    else
      url "https://opencode.ai/files/bin/2.0.23/opencode-linux-x64-baseline.tar.gz"
      sha256 "65d7dc1f6abaa0ad53f115c1f8b6b7977cc883188c2a48885260b3b0d299978c"
    end
  end

  def install
    bin.install "opencode"
  end
end
