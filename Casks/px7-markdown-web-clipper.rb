cask "px7-markdown-web-clipper" do
  version "1.0.10"
  sha256 "62e80cb73a52566c934be7bfd96089b7b41f673a70936322d76c51de9c3951f7"

  url "https://github.com/px7digital/homebrew-tap/releases/download/px7-markdown-web-clipper-#{version}/PX7MarkdownWebClipper-#{version}.zip"
  name "PX7 Markdown Web Clipper"
  desc "Save Safari articles as local Markdown files with images"
  homepage "https://markdown.px7.digital/web-clipper/"

  livecheck do
    url "https://markdown.px7.digital/web-clipper/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :sonoma

  app "PX7 Markdown Web Clipper.app"

  zap trash: [
    "~/Library/Application Support/com.px7.webclipper",
    "~/Library/Preferences/com.px7.webclipper.plist",
  ]
end
