cask "hex" do
  version "2.1.16"
  sha256 "102dc1a8d80dc359ee15a30141957b6a311e581214b44a3c615026fa91288b8a"

  url "https://pub-089d681d41754031a4aefa7017d8c2fb.r2.dev/releases/HEX-#{version}-arm64.dmg"
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

  uninstall quit: "com.kitlangton.hex2"

  zap trash: [
        "~/.config/hex",
        "~/Library/Application Support/voice-control",
        "~/Library/Caches/com.kitlangton.hex2",
        "~/Library/Caches/moonshine_voice/download.moonshine.ai/model/small-streaming-en",
        "~/Library/Cookies/com.kitlangton.hex2.binarycookies",
        "~/Library/HTTPStorages/com.kitlangton.hex2",
        "~/Library/HTTPStorages/com.kitlangton.hex2.binarycookies",
        "~/Library/Preferences/com.kitlangton.hex2.plist",
        "~/Library/Saved Application State/com.kitlangton.hex2.savedState",
      ],
      rmdir: "~/Library/Caches/moonshine_voice"
end
