cask "local" do
  version "6.1.7,5610"
  sha256 "92d02f127eed0c6790d49cc098fd31e7e08dd1a7da90ab6b1b4217c7a2d62ae0"

  url "https://cdn.localwp.com/releases-stable/#{version.before_comma}+#{version.after_comma}/local-#{version.before_comma}-mac.dmg"
  name "Local"
  desc "WordPress local development tool by Flywheel"
  homepage "https://localwp.com/"

  livecheck do
    url "https://cdn.localwp.com/stable/latest/mac"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/(\d+(?:\.\d+)+)\+(\d+)/})
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Local.app"

  zap trash: [
    "~/Library/Application Support/Local",
    "~/Library/Logs/local-lightning.log",
    "~/Library/Preferences/com.getflywheel.lightning.local.plist",
    "~/Library/Saved Application State/com.getflywheel.lightning.local.savedState",
  ]
end
