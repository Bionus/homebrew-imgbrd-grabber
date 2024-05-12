cask "imgbrd-grabber" do
  version "7.12.0"
  sha256 "d7a4f56d880ab7d051fe1ffe6c41ad34f4aeb1c29051acdec39bea94e939bbb3"

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
