cask "hex" do
  version "3.1.2"
  sha256 "490fe0cad63d83c0fdb10f5bab4e35eca66557a230868280133d587883166907"

  url "https://anoma.ly/release/hex/files/490fe0cad63d83c0fdb10f5bab4e35eca66557a230868280133d587883166907/Hex.dmg"
  name "Hex"
  desc "Local voice dictation"
  homepage "https://anoma.ly/hex/"

  livecheck do
    url "https://anoma.ly/release/hex/desktop/stable.json"
    strategy :json do |json|
      json.dig("release", "version")
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Hex.app"

  uninstall quit: "anomaly.hex"

  zap trash: [
    "~/.config/hex",
    "~/Library/Application Support/hex",
    "~/Library/Caches/anomaly.hex",
    "~/Library/HTTPStorages/anomaly.hex",
    "~/Library/Preferences/anomaly.hex.plist",
    "~/Library/Saved Application State/anomaly.hex.savedState",
  ]
end
