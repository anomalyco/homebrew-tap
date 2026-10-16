# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.0.31"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.31/opencode-darwin-arm64.zip"
      sha256 "08883440ab20e663f1e33a69045bb3286643b6a309855139673615fa704cc71a"
    else
      url "https://opencode.ai/files/bin/2.0.31/opencode-darwin-x64-baseline.zip"
      sha256 "881e25e485c86791d45b8eccafb18364b5d8c2e0eba5b89b9ba01a7485154788"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.31/opencode-linux-arm64.tar.gz"
      sha256 "861623e0d158e9e2d284a52dfb42af6153c312a94edd6128c8cd7a59c955729a"
    else
      url "https://opencode.ai/files/bin/2.0.31/opencode-linux-x64-baseline.tar.gz"
      sha256 "d24cc4cd1552a7a5933d2363ec8287fba842e345149475dedc0349837d44f37d"
    end
  end

  def install
    bin.install "opencode"
  end
end
