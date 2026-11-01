cask "px7-image-sheet" do
  version "1.1.0"
  sha256 "385f71d51baa6a816e0fae18d945b7c08252c391d1be5775e65e2a7065e8096a"

  url "https://github.com/px7digital/homebrew-tap/releases/download/px7-image-sheet-#{version}/PX7ImageSheet-#{version}.zip"
  name "PX7 Image Sheet"
  desc "Create captioned contact sheets from image files and folders"
  homepage "https://image.px7.digital/sheet/"

  livecheck do
    url "https://image.px7.digital/sheet/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :sonoma

  app "PX7 Image Sheet.app"

  zap trash: [
    "~/Library/Preferences/com.px7.image-sheet.plist",
    "~/Library/Saved Application State/com.px7.image-sheet.savedState",
  ]
end
