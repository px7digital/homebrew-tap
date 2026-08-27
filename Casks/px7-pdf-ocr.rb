cask "px7-pdf-ocr" do
  version "1.0.1"
  sha256 "57772e8dc5edab1f7a0339a6c23a05dc86ac1c249292e5a2e2e1192f232669dc"

  url "https://github.com/px7digital/homebrew-tap/releases/download/px7-pdf-ocr-#{version}/PX7PDFOCR-#{version}.zip"
  name "PX7 PDF OCR"
  desc "Make scanned PDF files searchable with local OCR"
  homepage "https://pdf.px7.digital/ocr/"

  livecheck do
    url "https://pdf.px7.digital/ocr/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :sonoma

  app "PX7 PDF OCR.app"

  zap trash: [
    "~/Library/Preferences/com.px7.pdf-ocr.plist",
    "~/Library/Saved Application State/com.px7.pdf-ocr.savedState",
  ]
end
