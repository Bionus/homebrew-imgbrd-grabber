cask "imgbrd-grabber" do
    version "7.9.1"
    sha256 "1ed5dd3ba2f7dcadaf3d051229f7b14cc77466a05a17ed32e58a73b4f7c27c17"

    url "https://github.com/Bionus/imgbrd-grabber/releases/download/v#{version}/Grabber_v#{version}.dmg"
    name "Grabber"
	desc "Very customizable imageboard/booru downloader with powerful filenaming features"
    homepage "https://bionus.github.io/imgbrd-grabber/"

	livecheck do
		url :url
		strategy :github_latest
	end

	conflicts_with cask: "imgbrd-grabber-nightly"

    app "grabber.app"

	zap trash: "~/Library/Preferences/Bionus/Grabber",
		rmdir: "~/Library/Preferences/Bionus"
end
