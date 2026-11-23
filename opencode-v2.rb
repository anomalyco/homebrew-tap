# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.4.1"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.4.1/opencode-darwin-arm64.zip"
      sha256 "95a101eda95108478f1db43cff8fcbd4811f6c0e79af1e167301843c6a48d731"
    else
      url "https://opencode.ai/files/bin/2.4.1/opencode-darwin-x64-baseline.zip"
      sha256 "3dd6612423b69f7f282866112d99b6d690c8e07f27375b227f6a6ee4e652f5b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.4.1/opencode-linux-arm64.tar.gz"
      sha256 "cb28cf94541aeb62a4b2ea5997a99b5dd6bae595a772f36fbe279299f2032a4f"
    else
      url "https://opencode.ai/files/bin/2.4.1/opencode-linux-x64-baseline.tar.gz"
      sha256 "9ddd18e3faf64eaeccf6a0fcbc96a5c7a14520ae5fd5b61e5be51d894f478b47"
    end
  end

  def install
    bin.install "opencode"
  end
end
