cask "peek3d" do
  version "1.1"
  sha256 "de419e4754dd6099cc4d0b02dab570bd92a8745fa209030131062d0f96011edc"

  url "https://github.com/deeeemiss/Peek3D/releases/download/v#{version}/Peek3D-#{version}.dmg"
  name "Peek3D"
  desc "Native viewer for 3D files (glTF, FBX, OBJ, USD, STL and more)"
  homepage "https://github.com/deeeemiss/Peek3D"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Peek3D.app"

  zap trash: [
    "~/Library/Containers/com.seb.Peek3D",
    "~/Library/Preferences/com.seb.Peek3D.plist",
    "~/Library/Saved Application State/com.seb.Peek3D.savedState",
  ]
end
