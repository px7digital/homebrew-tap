cask "px7-video-recorder" do
  version "1.0.28"
  sha256 "956175220802851b507fd3eee4a246ff81aabf2ff9bc672fc307fe392bbe72f8"

  url "https://github.com/px7digital/homebrew-tap/releases/download/px7-video-recorder-#{version}/PX7VideoRecorder-#{version}.zip"
  name "PX7 Video Recorder"
  desc "Record a display, window, or region with system audio"
  homepage "https://video.px7.digital/recorder/"

  livecheck do
    url "https://video.px7.digital/recorder/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :sonoma

  app "PX7 Video Recorder.app"

  zap trash: [
    "~/Library/Preferences/com.px7.video-recorder.plist",
    "~/Library/Saved Application State/com.px7.video-recorder.savedState",
  ]
end
