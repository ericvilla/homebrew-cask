cask "leapp" do
  version "0.8.0"
  sha256 "S0S0wXwW5C63W+j67WF5QqQaovsWzMa+R7b22paWH420vuUnWFssalmJ1AaU3ZQLapxfvfDyK4G9MB45dM6wKw=="

  url "https://asset.noovolari.com/#{version}/Leapp-#{version}.dmg",
      verified: "asset.noovolari.com/"
  name "Leapp"
  desc "Cloud credentials manager"
  homepage "https://www.leapp.cloud/"

  livecheck do
    url "https://asset.noovolari.com/latest/latest-mac.yml"
    strategy :electron_builder
  end

  app "Leapp.app"

  zap trash: [
    "~/.Leapp",
    "~/Library/Application Support/Leapp",
    "~/Library/Logs/Leapp",
    "~/Library/Preferences/com.leapp.app.plist",
    "~/Library/Saved Application State/com.leapp.app.savedState",
  ]
end
