cask "px7-markdown-typeset" do
  version "1.3.13"
  sha256 "0a332ebee765f65b3f5697ff4b6300aaf4388dce6e82674e92ec36174574161e"

  url "https://github.com/px7digital/homebrew-tap/releases/download/px7-markdown-typeset-#{version}/PX7MarkdownTypeset-#{version}.zip"
  name "PX7 Markdown Typeset"
  desc "Export local Markdown as polished PDF, HTML, rich text, or LaTeX"
  homepage "https://markdown.px7.digital/typeset/"

  livecheck do
    url "https://markdown.px7.digital/typeset/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :sonoma

  app "PX7 Markdown Typeset.app"

  zap trash: [
    "~/Library/Preferences/com.px7.typeset.plist",
    "~/Library/Saved Application State/com.px7.typeset.savedState",
  ]
end
