#!/bin/sh

macOsUsername=""
spotifyUsername=""
restartSpotifyAppleScriptPath=""

/usr/local/bin/fswatch -0 "/Users/${macOsUsername}/Library/Application Support/Spotify/Users/${spotifyUsername}-user/ad-state-storage.bnk" | xargs -n1 -I{} osascript "$restartSpotifyAppleScriptPath"
