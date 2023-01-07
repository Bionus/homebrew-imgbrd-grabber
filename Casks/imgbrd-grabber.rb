cask "imgbrd-grabber" do
  version "7.10.1"
  sha256 "891ba589a3499c28fae1db5041e9dae953ed1aab74ae3ee71de3822f98217667"

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
