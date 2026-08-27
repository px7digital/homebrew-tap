cask "px7-image-sheet" do
  version "1.0.3"
  sha256 "651278c3aa1504d773950ee3a5d253a3256850ab9fbcf57029d4c37af3b9d7a3"

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
