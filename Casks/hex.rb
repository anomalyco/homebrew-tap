cask "hex" do
  # Until Hex's first stable release, the cask installs the newest dev build;
  # Hex then updates itself from the Dev channel. Hex's Release workflow
  # replaces this with a versioned cask at the first stable release.
  version :latest
  sha256 :no_check

  url "https://anoma.ly/release/hex/desktop/dev/macos-arm64-dmg"
  name "Hex"
  desc "Local voice dictation"
  homepage "https://anoma.ly/hex/"

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
