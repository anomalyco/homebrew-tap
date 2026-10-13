# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.0.28"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.28/opencode-darwin-arm64.zip"
      sha256 "0fbb2c8778f7ec45e92cd2f0c90fca47e0255ef501091298dd85d1f93a1a04ef"
    else
      url "https://opencode.ai/files/bin/2.0.28/opencode-darwin-x64-baseline.zip"
      sha256 "620e89aa005fe52bb24482de59f9a9fa5574bbab8780f283674fe6212cc3da74"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.28/opencode-linux-arm64.tar.gz"
      sha256 "58fd41544e570ceb9bdb2fa4b445ce66f05538490f6b9ad27d23dcdfe4689670"
    else
      url "https://opencode.ai/files/bin/2.0.28/opencode-linux-x64-baseline.tar.gz"
      sha256 "2f7e35fa8538632c264b2f64280e13f8f71a82c3433cbcc84ad9a97a073a7796"
    end
  end

  def install
    bin.install "opencode"
  end
end
