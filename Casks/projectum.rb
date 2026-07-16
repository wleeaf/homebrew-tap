cask "projectum" do
  version "2.4.0"
  sha256 "d536a92b5517dde122dd94e7d3969f259aae6d95b2c1c710a387f7c1b0e6df33"

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
