cask "companion" do
  version :latest
  sha256 :no_check

  url "https://github.com/loopwork/Companion/releases/latest/download/Companion.zip"
  name "Companion"
  desc "MCP client for testing and debugging MCP servers"
  homepage "https://github.com/loopwork/Companion"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Companion.app"

  zap trash: [
    "~/Library/Application Support/Companion",
    "~/Library/Caches/Companion",
    "~/Library/Preferences/com.loopwork.Companion.plist",
  ]
end
