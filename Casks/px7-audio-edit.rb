cask "px7-audio-edit" do
  version "1.1.3"
  sha256 "e0bc32a3b14ff0c3b553f59a9b662ff61c1030e148855ed0c6f02783bfb264b6"

  url "https://github.com/px7digital/homebrew-tap/releases/download/px7-audio-edit-#{version}/PX7AudioEdit-#{version}.zip"
  name "PX7 Audio Edit"
  desc "Arrange, trim, fade, and mix audio on a multitrack timeline"
  homepage "https://audio.px7.digital/edit/"

  livecheck do
    url "https://audio.px7.digital/edit/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :sonoma

  app "PX7 Audio Edit.app"

  zap trash: [
    "~/Library/Preferences/com.px7.audio-edit.plist",
    "~/Library/Saved Application State/com.px7.audio-edit.savedState",
  ]
end
