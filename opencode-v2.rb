# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.0.24"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.24/opencode-darwin-arm64.zip"
      sha256 "64036a08d34959638a67e09137add101259abb4c8f50d2bf75bc7112ff8c8042"
    else
      url "https://opencode.ai/files/bin/2.0.24/opencode-darwin-x64-baseline.zip"
      sha256 "9b368dfd2bc7db1e41b8d40af5ff60f550e458f4452159dd1c9a5993f4e0ec1f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.24/opencode-linux-arm64.tar.gz"
      sha256 "235655c7af6964acfcc4ef57f4165213104770d0cad263495d426a7261978370"
    else
      url "https://opencode.ai/files/bin/2.0.24/opencode-linux-x64-baseline.tar.gz"
      sha256 "f4e441029e88cac036db651f11b614e2ff359d9773ee2a430703ded5d2e5db7c"
    end
  end

  def install
    bin.install "opencode"
  end
end
