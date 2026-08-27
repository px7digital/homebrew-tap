cask "px7-pdf-convert" do
  version "1.0.2"
  sha256 "52754ac1bd778c2faf02ed2fc56e55291493c1dd582d83705ea460c503ee448b"

  url "https://github.com/px7digital/homebrew-tap/releases/download/px7-pdf-convert-#{version}/PX7PDFConvert-#{version}.zip"
  name "PX7 PDF Convert"
  desc "Convert PDFs, images, Markdown, and text locally"
  homepage "https://pdf.px7.digital/convert/"

  livecheck do
    url "https://pdf.px7.digital/convert/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :sonoma

  app "PX7 PDF Convert.app"

  zap trash: [
    "~/Library/Preferences/com.px7.pdf-convert.plist",
    "~/Library/Saved Application State/com.px7.pdf-convert.savedState",
  ]
end
