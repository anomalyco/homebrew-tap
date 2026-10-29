# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.2.1"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.2.1/opencode-darwin-arm64.zip"
      sha256 "9df6ca3d031565c61080c717374ba846d238ec5b1c411eebe6b1b85835998ffe"
    else
      url "https://opencode.ai/files/bin/2.2.1/opencode-darwin-x64-baseline.zip"
      sha256 "329d1fec88e7fb47109769664b7269a0105123e549560baa64a3265ad4f87a2e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.2.1/opencode-linux-arm64.tar.gz"
      sha256 "c354d8a2dc4152308bf286b5ec7f20b3b3cfc71f9476e64f6aa274142505b2f8"
    else
      url "https://opencode.ai/files/bin/2.2.1/opencode-linux-x64-baseline.tar.gz"
      sha256 "3179551ddf69877ca24a960b0175e94405cf3f52147f1eec705094374bef49f2"
    end
  end

  def install
    bin.install "opencode"
  end
end
