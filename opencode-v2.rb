# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.1.4"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.1.4/opencode-darwin-arm64.zip"
      sha256 "f9edc1dded080e39aa61db94270a51af66772ac572be7d6b15fa6f87251a3dff"
    else
      url "https://opencode.ai/files/bin/2.1.4/opencode-darwin-x64-baseline.zip"
      sha256 "844490106ec4e21c4ea25e1fa764aa9ca4810fca41bc5216ad68651fa36085d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.1.4/opencode-linux-arm64.tar.gz"
      sha256 "759c9d6e7b246b81bcc93dfc6cc3bb2a38287c75b6202e305eacacb5dd882315"
    else
      url "https://opencode.ai/files/bin/2.1.4/opencode-linux-x64-baseline.tar.gz"
      sha256 "2edaf8cf96e81dec5ee996a3196b03345cf59e5a1673d83a4599bb4afc5c5f6d"
    end
  end

  def install
    bin.install "opencode"
  end
end
