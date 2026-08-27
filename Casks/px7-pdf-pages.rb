cask "px7-pdf-pages" do
  version "1.0.2"
  sha256 "023f20a8c037633457d436d2cf9bf91eac7337eae851bf40b5b4c78ca4cb186f"

  url "https://github.com/px7digital/homebrew-tap/releases/download/px7-pdf-pages-#{version}/PX7PDFPages-#{version}.zip"
  name "PX7 PDF Pages"
  desc "Merge, split, extract, rotate, and reorder PDF pages"
  homepage "https://pdf.px7.digital/pages/"

  livecheck do
    url "https://pdf.px7.digital/pages/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :sonoma

  app "PX7 PDF Pages.app"

  zap trash: [
    "~/Library/Preferences/com.px7.pdf-pages.plist",
    "~/Library/Saved Application State/com.px7.pdf-pages.savedState",
  ]
end
