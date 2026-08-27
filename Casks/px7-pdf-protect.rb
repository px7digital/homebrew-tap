cask "px7-pdf-protect" do
  version "1.0.1"
  sha256 "aa3564cc836f32b77fecd6eafc3816c76a376976e99489744c95c0f930f0d4e9"

  url "https://github.com/px7digital/homebrew-tap/releases/download/px7-pdf-protect-#{version}/PX7PDFProtect-#{version}.zip"
  name "PX7 PDF Protect"
  desc "Add or remove PDF open passwords and verify the result"
  homepage "https://pdf.px7.digital/protect/"

  livecheck do
    url "https://pdf.px7.digital/protect/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :sonoma

  app "PX7 PDF Protect.app"

  zap trash: [
    "~/Library/Preferences/com.px7.pdf-protect.plist",
    "~/Library/Saved Application State/com.px7.pdf-protect.savedState",
  ]
end
