#!/bin/sh

$spotifyUsername = ""
$restartSpotifyAppleScriptDirectory = ""

/usr/local/bin/fswatch -0 "~/Users/${spotifyUsername}-user/ad-state-storage.bnk" | xargs -n1 -I{} osascript "/Users/henry/Documents/Spotify/restartSpotify.applescript"
