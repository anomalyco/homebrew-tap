# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.0.17"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.17/opencode-darwin-arm64.zip"
      sha256 "7a04339ea0ca2fd03b3cdd02eb0372937aedeb2520784dfd68369cd84faf4240"
    else
      url "https://opencode.ai/files/bin/2.0.17/opencode-darwin-x64-baseline.zip"
      sha256 "741a0e14e4586661e4aa3be90eeae559834a0431878738c5221d698d03cd1da7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.17/opencode-linux-arm64.tar.gz"
      sha256 "7d69cbf6812f9f45bea512660808408c447aa3936e0c8be765a2b200ea64ac79"
    else
      url "https://opencode.ai/files/bin/2.0.17/opencode-linux-x64-baseline.tar.gz"
      sha256 "32bb02c4d8607420b9ffa23c2598001e39dbb82a7137ec1f86b76b6b951b8fbb"
    end
  end

  def install
    bin.install "opencode"
  end
end
