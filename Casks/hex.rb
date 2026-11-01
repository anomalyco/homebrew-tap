cask "hex" do
  version "3.1.1"
  sha256 "a2775fb74b526892b1d36cefea6c0da42cbd3677c5fbdc8dce907d39bb59a10e"

  url "https://anoma.ly/release/hex/files/a2775fb74b526892b1d36cefea6c0da42cbd3677c5fbdc8dce907d39bb59a10e/Hex.dmg"
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
