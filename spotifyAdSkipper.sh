#!/bin/sh

macOsUsername=""
spotifyUsername=""
restartSpotifyAppleScriptDirectory=""

/usr/local/bin/fswatch -0 "/Users/${macOsUsername}/Library/Application Support/Spotify/Users/${spotifyUsername}-user/ad-state-storage.bnk" | xargs -n1 -I{} osascript "$restartSpotifyAppleScriptDirectory"
