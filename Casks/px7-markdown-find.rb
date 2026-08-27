cask "px7-markdown-find" do
  version "1.0.8"
  sha256 "60a0cbedbbf059e1dec71f694905117334aaf8cc717a1dd7c902a152b893be93"

  url "https://github.com/px7digital/homebrew-tap/releases/download/px7-markdown-find-#{version}/PX7MarkdownFind-#{version}.zip"
  name "PX7 Markdown Find"
  desc "Search Markdown titles and contents across local folders"
  homepage "https://markdown.px7.digital/find/"

  livecheck do
    url "https://markdown.px7.digital/find/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :sonoma

  app "PX7 Markdown Find.app"

  zap trash: [
    "~/Library/Application Support/com.px7.find",
    "~/Library/Preferences/com.px7.find.plist",
  ]
end
