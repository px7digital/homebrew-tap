cask "px7-pocketlauncher" do
  version "1.751"
  sha256 "6b7e431af53e8141d0300a4eacc7ce59e0006b6dc831959e67092984a265089b"

  url "https://github.com/px7digital/homebrew-tap/releases/download/pocketlauncher-#{version}/PocketLauncher.zip"
  name "PocketLauncher"
  desc "Turn an iPhone into a local app and shortcut control deck"
  homepage "https://pocketlauncher.app/"

  livecheck do
    url "https://pocketlauncher.app/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :ventura

  app "PocketLauncher.app"

  uninstall launchctl: "com.px7.pocketlauncher",
            quit:      "app.pocketlauncher.mac"

  zap trash: [
    "~/Library/Application Support/PocketLauncher",
    "~/Library/LaunchAgents/com.px7.pocketlauncher.plist",
    "~/Library/Preferences/app.pocketlauncher.mac.plist",
  ]
end
