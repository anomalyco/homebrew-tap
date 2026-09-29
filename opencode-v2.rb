# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.0.19"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.19/opencode-darwin-arm64.zip"
      sha256 "42e0bd7c4d16197e29be6b0eb8fa6cc54621792fd9c384a78cf9e607f4027a62"
    else
      url "https://opencode.ai/files/bin/2.0.19/opencode-darwin-x64-baseline.zip"
      sha256 "0e7aec5bc39ea2d6bec5da0708a23dc73aa04caee405e43ac413b3c84672816f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.19/opencode-linux-arm64.tar.gz"
      sha256 "d0138dd9b43910c28166cfc4da4a53a1b99b07931a37afa749bde812cd02e5a4"
    else
      url "https://opencode.ai/files/bin/2.0.19/opencode-linux-x64-baseline.tar.gz"
      sha256 "bf8f27ff6ffdae3f1a822213c15d5c51344fb50b70953f02b187cffe19543d56"
    end
  end

  def install
    bin.install "opencode"
  end
end
