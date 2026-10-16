cask "peek3d" do
  version "1.3"
  sha256 "b2c06af930e7fb044b2a3090bbd0595fde3560a0b452274161e285b00db909c9"

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
