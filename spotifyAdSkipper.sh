#!/bin/sh

$spotifyUsername = ""
$restartSpotifyAppleScriptDirectory = ""

/usr/local/bin/fswatch -0 "~/Library/Application Support/Spotify/Users/${spotifyUsername}-user/ad-state-storage.bnk" | xargs -n1 -I{} osascript "$restartSpotifyAppleScriptDirectory"
