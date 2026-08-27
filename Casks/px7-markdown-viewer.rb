cask "px7-markdown-viewer" do
  version "1.3.12"
  sha256 "6800ef3c6dcde3abfbe81807fb651e4a0c518d2eab2927f6bd13ede84141ea89"

  url "https://downloads.px7.digital/markdown/markdown-viewer/#{version}/PX7MarkdownViewer-#{version}.zip"
  name "PX7 Markdown Viewer"
  desc "Preview, open, and edit Markdown files locally"
  homepage "https://markdown.px7.digital/markdown-viewer/"

  depends_on macos: :sonoma

  app "PX7 Markdown Viewer.app"

  zap trash: [
    "~/Library/Preferences/com.px7.markdownviewer.plist",
    "~/Library/Saved Application State/com.px7.markdownviewer.savedState",
  ]
end
