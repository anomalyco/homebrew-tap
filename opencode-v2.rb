# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.2.4"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.2.4/opencode-darwin-arm64.zip"
      sha256 "4e093cae2931773c354896d98e7da0cfa3607c110aeaf255ba07f9c2d2238219"
    else
      url "https://opencode.ai/files/bin/2.2.4/opencode-darwin-x64-baseline.zip"
      sha256 "87e99638d6208b3e8397a59d262c580266fa410b79228058669c1db4bf6e598b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.2.4/opencode-linux-arm64.tar.gz"
      sha256 "81edcae078f36356cde3cf57d0cc6627896b18d1bddf47317cb025c56fcffd93"
    else
      url "https://opencode.ai/files/bin/2.2.4/opencode-linux-x64-baseline.tar.gz"
      sha256 "1b70ce4a88e27c3643c2bb61c757dfe173b4e3629926ce808d45f3774d87826e"
    end
  end

  def install
    bin.install "opencode"
  end
end
