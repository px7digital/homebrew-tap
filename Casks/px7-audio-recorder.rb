cask "px7-audio-recorder" do
  version "1.0.3"
  sha256 "c6b377e15fac58f18451e0d6c9f0575b3ebb89b12e6a4ac32916bc751fbd1477"

  url "https://github.com/px7digital/homebrew-tap/releases/download/px7-audio-recorder-#{version}/PX7AudioRecorder-#{version}.zip"
  name "PX7 Audio Recorder"
  desc "Record system audio and microphones without virtual drivers"
  homepage "https://audio.px7.digital/recorder/"

  livecheck do
    url "https://audio.px7.digital/recorder/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :sonoma

  app "PX7 Audio Recorder.app"

  zap trash: [
    "~/Library/Preferences/com.px7.audio-recorder.plist",
    "~/Library/Saved Application State/com.px7.audio-recorder.savedState",
  ]
end
