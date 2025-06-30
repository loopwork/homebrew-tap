cask "imcp" do
  version :latest
  sha256 :no_check

  url "https://github.com/loopwork/iMCP/releases/latest/download/iMCP.zip"
  name "iMCP"
  desc "MCP server app for your application"
  homepage "https://github.com/loopwork/iMCP"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "iMCP.app"

  zap trash: [
    "~/Library/Application Support/iMCP",
    "~/Library/Caches/iMCP",
    "~/Library/Preferences/com.loopwork.iMCP.plist",
  ]
end
