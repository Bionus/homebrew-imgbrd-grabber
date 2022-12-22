cask "imgbrd-grabber" do
  version "7.10.0"
  sha256 "42f749730df53d02b908dbedab9c09b14dfa7322f4ea403b6b396bf91f4c40d4"

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
