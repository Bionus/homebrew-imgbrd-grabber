cask "imgbrd-grabber" do
  version "7.14.0"
  sha256 "b9d0893ea59c4f416d068067fe431757bfb36758ff6ff1d8541bfb1e0c1494b5"

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
  depends_on :macos

  app "grabber.app"

  zap trash: "~/Library/Preferences/Bionus/Grabber",
      rmdir: "~/Library/Preferences/Bionus"
end
