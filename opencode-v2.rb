# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.1.0"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.1.0/opencode-darwin-arm64.zip"
      sha256 "76b186b10992e56d7a66cf580006554ca145dba82935b24427764581220bc8fb"
    else
      url "https://opencode.ai/files/bin/2.1.0/opencode-darwin-x64-baseline.zip"
      sha256 "2dbdf0d21cd9691142e582125eb2c01b7e653facb584d412d3ffc3d972679beb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.1.0/opencode-linux-arm64.tar.gz"
      sha256 "ca1b8d3c770dca38f4c302428a47b4a3fccd5b3809259abd55f33e619cc118f4"
    else
      url "https://opencode.ai/files/bin/2.1.0/opencode-linux-x64-baseline.tar.gz"
      sha256 "0431d56382c695bd14b93901dbdd2322202a6a79e5540e9957b05cc1054bd199"
    end
  end

  def install
    bin.install "opencode"
  end
end
