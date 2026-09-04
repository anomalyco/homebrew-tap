cask "hex" do
  version "2.1.15"
  sha256 "783db9a5ee2bcc44f58e3fc1b7d2d3de30a6e93f862764639fd7dff08e55537f"

  url "https://pub-089d681d41754031a4aefa7017d8c2fb.r2.dev/releases/HEX-#{version}-arm64.dmg",
      verified: "pub-089d681d41754031a4aefa7017d8c2fb.r2.dev/"
  name "Hex"
  desc "Local-first voice dictation"
  homepage "https://hex.kitlangton.dev/"

  livecheck do
    url "https://pub-089d681d41754031a4aefa7017d8c2fb.r2.dev/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Hex.app"
end
