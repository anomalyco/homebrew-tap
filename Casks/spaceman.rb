cask "spaceman" do
  version "0.3.4"
  sha256 "fea61dc64ad8325a17be723d8661b851f8cd68ae2ff03efc5f62b6a38761f758"

  url "https://anoma.ly/release/spaceman/files/fea61dc64ad8325a17be723d8661b851f8cd68ae2ff03efc5f62b6a38761f758/Spaceman.zip"
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
