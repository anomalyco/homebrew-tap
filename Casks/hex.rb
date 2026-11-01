cask "hex" do
  version "3.2.0"
  sha256 "7bcf74fa2058dfdf89ba2c6b8ee6942349758f4f177198744d1e8472b0d2ed96"

  url "https://anoma.ly/release/hex/files/7bcf74fa2058dfdf89ba2c6b8ee6942349758f4f177198744d1e8472b0d2ed96/Hex.dmg"
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
