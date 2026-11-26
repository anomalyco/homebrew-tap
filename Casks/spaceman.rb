cask "spaceman" do
  version "0.3.6"
  sha256 "2e11a039b0829c43c750c9bd70a3186d69ea1992b0c1b52068bae21351f0f443"

  url "https://anoma.ly/release/spaceman/files/2e11a039b0829c43c750c9bd70a3186d69ea1992b0c1b52068bae21351f0f443/Spaceman.zip"
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
