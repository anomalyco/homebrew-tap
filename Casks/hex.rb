cask "hex" do
  version "2.3.0"
  sha256 "3a2872b29bde17f3a5c3cc2643e74eaa11ae7d6911b53a803f619a62fd55e5ce"

  url "https://downloads.hex.kitlangton.dev/releases/HEX-#{version}-arm64.dmg"
  name "Hex"
  desc "Local-first voice dictation"
  homepage "https://hex.kitlangton.dev/"

  livecheck do
    url "https://downloads.hex.kitlangton.dev/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Hex.app"
end
