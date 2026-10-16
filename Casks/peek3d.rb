cask "peek3d" do
  version "1.2"
  sha256 "1898565bf519e4daf0cc7aeb78918cf8e7fd5ab0cce66511f2b8910e50688529"

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
