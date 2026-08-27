cask "px7-pdf-redact" do
  version "1.0.2"
  sha256 "ca1c6d987803697affbc8210dfa16f6adbe95f66c60d8228adf42878ba829df3"

  url "https://github.com/px7digital/homebrew-tap/releases/download/px7-pdf-redact-#{version}/PX7PDFRedact-#{version}.zip"
  name "PX7 PDF Redact"
  desc "Permanently redact text, images, or areas from PDF files"
  homepage "https://pdf.px7.digital/redact/"

  livecheck do
    url "https://pdf.px7.digital/redact/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :sonoma

  app "PX7 PDF Redact.app"

  zap trash: [
    "~/Library/Preferences/com.px7.pdf-redact.plist",
    "~/Library/Saved Application State/com.px7.pdf-redact.savedState",
  ]
end
