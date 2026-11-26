# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.4.2"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.4.2/opencode-darwin-arm64.zip"
      sha256 "d5a8c9fb4b121ebd531d9369d7ba6ce8af91c9d4d51d6685dbb4e0c7224fa5f3"
    else
      url "https://opencode.ai/files/bin/2.4.2/opencode-darwin-x64-baseline.zip"
      sha256 "a0db4020a7e1195a3a66c6a6a28fb05132d3c407ea73bb7548fbea4121f603f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.4.2/opencode-linux-arm64.tar.gz"
      sha256 "bf8d18dde87224629341ff398e76c7c17216b9b406affc728b6c1a5c136abf93"
    else
      url "https://opencode.ai/files/bin/2.4.2/opencode-linux-x64-baseline.tar.gz"
      sha256 "452912288f934d1771bd5bd0d8611ba3a6adc3db3ac3333c37facf373770ba66"
    end
  end

  def install
    bin.install "opencode"
  end
end
