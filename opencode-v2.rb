# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.3.1"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.3.1/opencode-darwin-arm64.zip"
      sha256 "7c98869cb57bbc76ad4fa732b591fd61adabeb7a4ab7b9ef9aa91489d356147c"
    else
      url "https://opencode.ai/files/bin/2.3.1/opencode-darwin-x64-baseline.zip"
      sha256 "f3cae5b94bf66c2dcbc8574fc37863118a73ac27875f85aa70b06620f410e589"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.3.1/opencode-linux-arm64.tar.gz"
      sha256 "7be3d4efa0844badd66f1f76d8a7597edeb3c26adfed89393b6ddac31dcde358"
    else
      url "https://opencode.ai/files/bin/2.3.1/opencode-linux-x64-baseline.tar.gz"
      sha256 "2f9ac6811d45831f80741b75e94fbe121fd3fa8ba7ecde3381814ed7410f1820"
    end
  end

  def install
    bin.install "opencode"
  end
end
