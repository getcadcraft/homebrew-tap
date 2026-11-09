cask "cadcraft-studio" do
  version "0.9.0"
  sha256 "3f36b3f534e97641ce9f85b6331e6362748f30f87be5b1b46d2fdf3b99f21417"

  url "https://cdn.getcadcraft.com/downloads/#{version}/CadCraft-Studio-#{version}.dmg",
      verified: "cdn.getcadcraft.com/downloads/"
  name "CadCraft Studio"
  desc "Eight CAD and BIM apps in one desktop install"
  homepage "https://getcadcraft.com/studio"

  livecheck do
    url "https://getcadcraft.com/download?os=macos"
    regex(/CadCraft-Studio-(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: :ventura

  app "CadCraft Studio.app"

  zap trash: [
    "~/Library/Application Support/com.getcadcraft.studio",
    "~/Library/Caches/com.getcadcraft.studio",
    "~/Library/Preferences/com.getcadcraft.studio.plist",
    "~/Library/WebKit/com.getcadcraft.studio",
  ]

  caveats <<~EOS
    CadCraft Studio is signed ad hoc and is not notarized by Apple yet, so macOS may refuse to open it the first time.
    Right-click CadCraft Studio in Applications and choose Open (macOS 15 and later: System Settings > Privacy & Security > Open Anyway).
  EOS
end
