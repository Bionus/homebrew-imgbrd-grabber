cask 'imgbrd-grabber-nightly' do
    version :latest
    sha256 :no_check

    url 'https://github.com/Bionus/imgbrd-grabber/releases/download/nightly/Grabber_nightly.dmg'
    name 'Grabber'
    homepage 'https://bionus.github.io/imgbrd-grabber/'

    app 'grabber.app'
end
