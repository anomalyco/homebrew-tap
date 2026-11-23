cask "spaceman" do
  version "0.3.3"
  sha256 "8540e3ba79340425d3605dbc7ac97c428ea19669b5c05b45a6b6d795ed566681"

  url "https://anoma.ly/release/spaceman/files/8540e3ba79340425d3605dbc7ac97c428ea19669b5c05b45a6b6d795ed566681/Spaceman.zip"
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
  depends_on macos: :sonoma

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
