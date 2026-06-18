cask "projectum" do
  version "2.3.0"
  sha256 "ce7cf93054224bfe8ec91a760229b809f1580816f656bd25fed8c2b0f82459d0"

  url "https://github.com/wleeaf/projectum/releases/download/v#{version}/Projectum-macos.dmg",
      verified: "github.com/wleeaf/projectum/"
  name "Projectum"
  desc "Keyboard-first desktop tracker for projects, playlists, tasks and notes"
  homepage "https://github.com/wleeaf/projectum"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Projectum.app"

  caveats <<~EOS
    Projectum is not notarized. On first launch, right-click the app in
    Finder and choose Open (or System Settings -> Privacy & Security ->
    Open Anyway) to get past Gatekeeper.
  EOS

  zap trash: [
    "~/.config/projectum",
  ]
end
