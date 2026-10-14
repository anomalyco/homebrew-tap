# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.0.29"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.29/opencode-darwin-arm64.zip"
      sha256 "cde9292948a79f910384b246ebec90dce02654158ad63cec61ed912aabc7f601"
    else
      url "https://opencode.ai/files/bin/2.0.29/opencode-darwin-x64-baseline.zip"
      sha256 "ab33099a0c36f593e92c6ca567410558ca1d90593604ef20674aa44f090d85db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.29/opencode-linux-arm64.tar.gz"
      sha256 "39d0aa787531b0be9e67d087e8ff665cda1f8e748124fe790fe35f1fdd005c38"
    else
      url "https://opencode.ai/files/bin/2.0.29/opencode-linux-x64-baseline.tar.gz"
      sha256 "639ed8b3d19085c7a62c6ba418dafd3c8edbc9e1116d1efc6d8846554b271d96"
    end
  end

  def install
    bin.install "opencode"
  end
end
