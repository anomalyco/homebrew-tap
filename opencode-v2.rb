# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.4.0"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.4.0/opencode-darwin-arm64.zip"
      sha256 "aa3d5929140008fd5ed88e5cd0f35c624b0f25c8679c196fc99c277415bc80ad"
    else
      url "https://opencode.ai/files/bin/2.4.0/opencode-darwin-x64-baseline.zip"
      sha256 "59b947c32c63455f183dd7adc61256a6d3fa54342daccd4fbdcade2de9e331a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.4.0/opencode-linux-arm64.tar.gz"
      sha256 "fed468566215fd38b26abab99018240c0d30772d3f45aee25621664ceff7e360"
    else
      url "https://opencode.ai/files/bin/2.4.0/opencode-linux-x64-baseline.tar.gz"
      sha256 "66cf6adeb02fbfe9ccbb1f6497fcf46cecf2d299a1dc3a7a32e01ea30ff20201"
    end
  end

  def install
    bin.install "opencode"
  end
end
