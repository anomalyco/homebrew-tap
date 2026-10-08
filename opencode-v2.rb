# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.0.26"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.26/opencode-darwin-arm64.zip"
      sha256 "325fa77c1e0f46e40a8297c168355501965230bd1f32923f367ec1b5ee19fac3"
    else
      url "https://opencode.ai/files/bin/2.0.26/opencode-darwin-x64-baseline.zip"
      sha256 "81c1b39235c93d6a807e84749eab0b9d26551228a1f41d0f76075d5c7e55e19a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.26/opencode-linux-arm64.tar.gz"
      sha256 "1508f9cc9a519b2aac93439d171a0be554ffe5a2cf433405010ec664663a7eae"
    else
      url "https://opencode.ai/files/bin/2.0.26/opencode-linux-x64-baseline.tar.gz"
      sha256 "0e682946fea509299f1515dfb6261aa5cf8d1d2e5ccdc833470523acb7222106"
    end
  end

  def install
    bin.install "opencode"
  end
end
