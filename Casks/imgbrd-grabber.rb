cask "imgbrd-grabber" do
    version "7.9.1"
    sha256 :no_check

    url "https://github.com/Bionus/imgbrd-grabber/releases/download/v#{version}/Grabber_v#{version}.dmg"
    name "Grabber"
	desc "Very customizable imageboard/booru downloader with powerful filenaming features"
    homepage "https://bionus.github.io/imgbrd-grabber/"

	conflicts_with cask: "imgbrd-grabber-nightly"

    app "grabber.app"

	zap trash: "~/Library/Preferences/Bionus/Grabber",
		rmdir: "~/Library/Preferences/Bionus"
end
