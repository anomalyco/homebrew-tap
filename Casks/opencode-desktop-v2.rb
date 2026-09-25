cask "opencode-desktop-v2" do
  arch arm: "arm64", intel: "x64"

  version "2.0.15"
  sha256 arm:   "9671065313eba4633d036d09f775933ced1ec197165ae35e528414593ac2cd8a",
         intel: "e8638809982bd82e06c79ec8a7c570afbd27555cf3af84edbe2140a25d325416"

  url "https://opencode.ai/files/bin/#{version}/opencode-desktop-mac-#{arch}.zip"
  name "OpenCode V2"
  desc "AI coding agent desktop client"
  homepage "https://opencode.ai/"

  livecheck do
    url "https://opencode.ai/update/api/latest/desktop/opencode/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  conflicts_with cask: "opencode-desktop"
  depends_on macos: :ventura

  app "OpenCode.app"

  uninstall quit: "ai.opencode.desktop"

  zap trash: [
    "~/Library/Application Support/ai.opencode.desktop",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ai.opencode.desktop.sfl*",
    "~/Library/Caches/@opencodedesktop-updater",
    "~/Library/Caches/ai.opencode.desktop",
    "~/Library/Caches/ai.opencode.desktop.ShipIt",
    "~/Library/HTTPStorages/ai.opencode.desktop",
    "~/Library/Logs/ai.opencode.desktop",
    "~/Library/Preferences/ai.opencode.desktop.plist",
    "~/Library/Saved Application State/ai.opencode.desktop.savedState",
    "~/Library/WebKit/ai.opencode.desktop",
  ]
end
