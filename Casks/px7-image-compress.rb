cask "px7-image-compress" do
  version "1.0.3"
  sha256 "b105aca9dd4dc11eb04645c4685ceb5b168496d93626f48148d29c4375da8ab1"

  url "https://github.com/px7digital/homebrew-tap/releases/download/px7-image-compress-#{version}/PX7ImageCompress-#{version}.zip"
  name "PX7 Image Compress"
  desc "Compress images below an exact KB or MB limit"
  homepage "https://image.px7.digital/compress/"

  livecheck do
    url "https://image.px7.digital/compress/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :sonoma

  app "PX7 Image Compress.app"

  zap trash: [
    "~/Library/Preferences/com.px7.image-compress.plist",
    "~/Library/Saved Application State/com.px7.image-compress.savedState",
  ]
end
