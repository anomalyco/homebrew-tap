cask "hex" do
  version "2.3.1"
  sha256 "56de94665da8fefbe0fe6310368fd7b62497dff593b6818475f9c5fa751def7a"

  url "https://downloads.hex.kitlangton.dev/releases/HEX-#{version}-arm64.dmg"
  name "Hex"
  desc "Local-first voice dictation"
  homepage "https://hex.kitlangton.com/"

  livecheck do
    url "https://downloads.hex.kitlangton.dev/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Hex.app"
end
