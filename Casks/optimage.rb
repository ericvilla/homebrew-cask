cask "optimage" do
  version "3.5.0,194"
  sha256 :no_check

  url "https://optimage.app/download/optimage-mac.zip"
  name "Optimage"
  desc "Image optimization tool"
  homepage "https://optimage.app/"

  livecheck do
    url "https://optimage.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Optimage.app"
  binary "#{appdir}/Optimage.app/Contents/MacOS/cli/optimage"

  zap trash: [
    "~/Library/Application Support/com.vmdanilov.optimage.cfg",
    "~/Library/Preferences/com.vmdanilov.optimage.plist",
  ]
end
