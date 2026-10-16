# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.0.32"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.32/opencode-darwin-arm64.zip"
      sha256 "e431e369025ba9554445d0ea8ad65457fbca59aa385ca790724ec6ab488d271b"
    else
      url "https://opencode.ai/files/bin/2.0.32/opencode-darwin-x64-baseline.zip"
      sha256 "25f788c18d46664d6aac8983c1a412ec169d3ff87f754e93f5026b6d1d03da6b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.32/opencode-linux-arm64.tar.gz"
      sha256 "c2e4f6c94f2e58a2df99cc647bd37285569600d7435e3796152825d8c9d10382"
    else
      url "https://opencode.ai/files/bin/2.0.32/opencode-linux-x64-baseline.tar.gz"
      sha256 "8adfbefe1d697b5d1774ab8d31630303543aa0676b9aa15d94ceb8e80a5bff69"
    end
  end

  def install
    bin.install "opencode"
  end
end
