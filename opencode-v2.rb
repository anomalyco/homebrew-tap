# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.2.2"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.2.2/opencode-darwin-arm64.zip"
      sha256 "c1c901a6379d667b7a30a3eea5a8f6e93416dba43e889e834771f6fb174f35c9"
    else
      url "https://opencode.ai/files/bin/2.2.2/opencode-darwin-x64-baseline.zip"
      sha256 "0c858568dc77ddfb18a934bedb1d67019670b012713175b0c5da7774bb57d0ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.2.2/opencode-linux-arm64.tar.gz"
      sha256 "dd866cebb72d11c91a7a7c4c3fd961ee06e03a9d0a5ff8eaa2a8ebebf25de7ba"
    else
      url "https://opencode.ai/files/bin/2.2.2/opencode-linux-x64-baseline.tar.gz"
      sha256 "31c9dd2e77ac080aa6b9b6a06785fcfba5cfa795644ced62e88841f2b90c6dc0"
    end
  end

  def install
    bin.install "opencode"
  end
end
