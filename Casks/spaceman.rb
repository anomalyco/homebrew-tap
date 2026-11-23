cask "spaceman" do
  version "0.3.2"
  sha256 "c9dfd21daab9cad717d8abed8613f4f0c2d913bc6fa8bd50d0f7cdec18acb5ac"

  url "https://anoma.ly/release/spaceman/files/c9dfd21daab9cad717d8abed8613f4f0c2d913bc6fa8bd50d0f7cdec18acb5ac/Spaceman.zip"
  name "Spaceman"
  desc "Tiling window manager with stable logical windows"
  homepage "https://anoma.ly/spaceman/"

  livecheck do
    url "https://anoma.ly/release/spaceman/desktop/stable.json"
    strategy :json do |json|
      json.dig("release", "version")
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Spaceman.app"
  binary "#{appdir}/Spaceman.app/Contents/MacOS/spaceman"

  uninstall quit: "anomaly.spaceman"

  zap trash: [
    "~/.config/spaceman",
    "~/Library/Application Support/Spaceman",
    "~/Library/Caches/anomaly.spaceman",
    "~/Library/HTTPStorages/anomaly.spaceman",
    "~/Library/Preferences/anomaly.spaceman.plist",
    "~/Library/Saved Application State/anomaly.spaceman.savedState",
  ]
end
