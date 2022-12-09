cask 'imgbrd-grabber-nightly' do
    version :latest
    sha256 :no_check

    url 'https://github.com/Bionus/imgbrd-grabber/releases/download/nightly/Grabber_nightly.dmg'
    name 'Grabber'
    desc 'Very customizable imageboard/booru downloader with powerful filenaming features'
    homepage 'https://bionus.github.io/imgbrd-grabber/'

    conflicts_with cask: 'imgbrd-grabber'

    app 'grabber.app'

    zap trash: "~/Library/Preferences/Bionus/Grabber",
        rmdir: "~/Library/Preferences/Bionus"
end
