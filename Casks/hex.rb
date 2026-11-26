cask "hex" do
  version "3.5.1"
  sha256 "526505e8891ec07a0700b1b37aec1254eeceeb00cc2b30a0320b74531fe46ed9"

  url "https://anoma.ly/release/hex/files/526505e8891ec07a0700b1b37aec1254eeceeb00cc2b30a0320b74531fe46ed9/Hex.dmg"
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
  binary "#{appdir}/Hex.app/Contents/MacOS/hex"

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
