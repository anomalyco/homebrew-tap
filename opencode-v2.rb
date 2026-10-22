# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.1.3"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.1.3/opencode-darwin-arm64.zip"
      sha256 "a6b0ec57814f751a4ea2b23d19bc9cd98283203b032d975ce9c429aa99d360ab"
    else
      url "https://opencode.ai/files/bin/2.1.3/opencode-darwin-x64-baseline.zip"
      sha256 "5965060077b99ef2fb14c2a30d3dde682f877ac89e90488cbc000e8bfd38a131"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.1.3/opencode-linux-arm64.tar.gz"
      sha256 "44b568374e7da234f008b1eb0d8f6001d93a4b34b8219f3aaef058d4499c7439"
    else
      url "https://opencode.ai/files/bin/2.1.3/opencode-linux-x64-baseline.tar.gz"
      sha256 "0e6f84f8ab26c5fca692a879a0c0ec93f6f72b22582081fa7268a80c173de4e6"
    end
  end

  def install
    bin.install "opencode"
  end
end
