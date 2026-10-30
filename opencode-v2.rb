# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.2.5"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.2.5/opencode-darwin-arm64.zip"
      sha256 "25ba9908979fa7d764792c82589b4b5768ab1511154e0317d98aa77d216ce767"
    else
      url "https://opencode.ai/files/bin/2.2.5/opencode-darwin-x64-baseline.zip"
      sha256 "b83ab73b3eb7b08f580f597eba8a7bcd886d2efa2ebf90405ad74ef54da02f71"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.2.5/opencode-linux-arm64.tar.gz"
      sha256 "5a528f42caf576c6cdece6a191eb273d3db54effa5518e0402684d8f8026aeb6"
    else
      url "https://opencode.ai/files/bin/2.2.5/opencode-linux-x64-baseline.tar.gz"
      sha256 "09f44302c10fd036912f59c81fd1aef5df45dd06f649197f9dfc9bbe2a79614e"
    end
  end

  def install
    bin.install "opencode"
  end
end
