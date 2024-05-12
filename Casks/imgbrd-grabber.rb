cask "imgbrd-grabber" do
  version "7.12.1"
  sha256 "e2ff30cbbd487a9aaa681fbaf31b74a928d779dad8dd48a49a72cf23df8cdd72"

  url "https://github.com/Bionus/imgbrd-grabber/releases/download/v#{version}/Grabber_v#{version}.dmg",
      verified: "github.com/Bionus/imgbrd-grabber/"
  name "Grabber"
  desc "Very customizable imageboard/booru downloader with powerful filenaming features"
  homepage "https://www.bionus.org/imgbrd-grabber/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "imgbrd-grabber-nightly"

  app "grabber.app"

  zap trash: "~/Library/Preferences/Bionus/Grabber",
      rmdir: "~/Library/Preferences/Bionus"
end
