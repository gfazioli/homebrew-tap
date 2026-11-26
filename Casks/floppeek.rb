# The Homebrew cask, as scripts/release.sh writes it into gfazioli/homebrew-tap's
# Casks/floppeek.rb, with the version and the DMG's sha256 filled in.
cask "floppeek" do
  version "0.1.0"
  sha256 "70e0a88f6fb6d07cb37f0f25153fed5f65acb9190605489758194b0c78ba6274"

  url "https://github.com/gfazioli/floppeek/releases/download/v#{version}/Floppeek-#{version}.dmg"
  name "Floppeek"
  desc "Quick Look previews and thumbnails for Amiga disk images"
  homepage "https://gfazioli.github.io/floppeek/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Floppeek.app"

  zap trash: [
    "~/Library/Containers/com.gfazioli.Floppeek.Preview",
    "~/Library/Containers/com.gfazioli.Floppeek.Thumbnail",
    "~/Library/Preferences/com.gfazioli.Floppeek.plist",
    "~/Library/Saved Application State/com.gfazioli.Floppeek.savedState",
  ]
end
