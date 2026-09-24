cask "peek3d" do
  version "1.0"
  sha256 "dd9bb44c0be543f319ef0884b79ef4dbfbde4c9d34189d989c2ced3b304b7ef3"

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
