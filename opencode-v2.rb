# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.2.6"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.2.6/opencode-darwin-arm64.zip"
      sha256 "15491608f6b0bc4debe5eac35eab629a2b07ea9a1fbac68ad53bcea59fcc4b45"
    else
      url "https://opencode.ai/files/bin/2.2.6/opencode-darwin-x64-baseline.zip"
      sha256 "6db2362690c2cf1fcebd165cc6ab303adcc2023e6d78e179563d94339c81bcaf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.2.6/opencode-linux-arm64.tar.gz"
      sha256 "f2d27600c367e45057d6a16f6a5c2aa8d77b41a9b10d4bc3d849c2f88870e944"
    else
      url "https://opencode.ai/files/bin/2.2.6/opencode-linux-x64-baseline.tar.gz"
      sha256 "08bb21d6326ce740d91cce7ebe88a6536933f6e1e30353b91a06b01f25da306c"
    end
  end

  def install
    bin.install "opencode"
  end
end
