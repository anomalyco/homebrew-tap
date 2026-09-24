# typed: false
# frozen_string_literal: true

class OpencodeV2 < Formula
  desc "OpenCode V2 - the AI coding agent for the terminal"
  homepage "https://github.com/anomalyco/opencode"
  version "2.0.16"
  license "MIT"

  depends_on "ripgrep"
  conflicts_with "opencode", because: "both install an opencode binary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.16/opencode-darwin-arm64.zip"
      sha256 "15591ea3b9920e018d2d8016067c69b71e1756c869586c7eae87eb110d952bd5"
    else
      url "https://opencode.ai/files/bin/2.0.16/opencode-darwin-x64-baseline.zip"
      sha256 "73e55837f08f9cb5fe90e1c8b7c7c32f69a29e303d18664b26022efb3b262f85"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://opencode.ai/files/bin/2.0.16/opencode-linux-arm64.tar.gz"
      sha256 "4d59f709fb867ac04b23b8a6398d3a7dd05e796994aefe07cb995071865eb4a6"
    else
      url "https://opencode.ai/files/bin/2.0.16/opencode-linux-x64-baseline.tar.gz"
      sha256 "bf9614f2cc8abd974f7cc299df13ec8b30324f8fc5a7b0964295ba784ecd9e61"
    end
  end

  def install
    bin.install "opencode"
  end
end
