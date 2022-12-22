cask "imgbrd-grabber-nightly" do
  version :latest
  sha256 :no_check

  url "https://github.com/Bionus/imgbrd-grabber/releases/download/nightly/Grabber_nightly.dmg",
      verified: "github.com/Bionus/imgbrd-grabber/"
  name "Grabber"
  desc "Very customizable imageboard/booru downloader with powerful filenaming features"
  homepage "https://www.bionus.org/imgbrd-grabber/"

  conflicts_with cask: "imgbrd-grabber"

  app "grabber.app"

  zap trash: "~/Library/Preferences/Bionus/Grabber",
      rmdir: "~/Library/Preferences/Bionus"
end
