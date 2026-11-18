# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.3.2"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.3.2/opencode-darwin-arm64.zip"
      sha256 "31ab5a06a29edc7e49b895f35c2b64ebfe7c7f0437b0f2581b006efcd79fee1a"
    else
      url "https://opencode.ai/files/bin/2.3.2/opencode-darwin-x64-baseline.zip"
      sha256 "6dc5deb4554df035d27dbb3a4663d96954969a33079aeb6b01dd9de2d9092545"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.3.2/opencode-linux-arm64.tar.gz"
      sha256 "9d10185acdb72336e086e699ca363a6065f410fd3c1caed0dc8046e95ac06ccb"
    else
      url "https://opencode.ai/files/bin/2.3.2/opencode-linux-x64-baseline.tar.gz"
      sha256 "563b5d663637226b6e3bb4bb6803281bc39b0d2cd88db06d674b6420aab009b0"
    end
  end

  def install
    bin.install "opencode"
  end
end
