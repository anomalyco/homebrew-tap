# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.0.22"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.22/opencode-darwin-arm64.zip"
      sha256 "b152ebd6ae63790e1f4751494d9db35266e7d06118e3a79afb4f65d549441db6"
    else
      url "https://opencode.ai/files/bin/2.0.22/opencode-darwin-x64-baseline.zip"
      sha256 "209d2996c45583cf64634d2ebc1aa4bdf665432cd6506c45a65964b2aa2d3013"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.22/opencode-linux-arm64.tar.gz"
      sha256 "3f4df7efe28a53830777666e160984cf8247938e68f105b8ae1f9b4778febc2d"
    else
      url "https://opencode.ai/files/bin/2.0.22/opencode-linux-x64-baseline.tar.gz"
      sha256 "6414bc6a441ef28bc549984baf2f60fb95e8fe46713bd17293921400ddfe6d33"
    end
  end

  def install
    bin.install "opencode"
  end
end
