#!/bin/sh

/usr/local/bin/fswatch -0 "/Users/henry/Library/Application Support/Spotify/Users/henryli_-user/ad-state-storage.bnk" | xargs -n1 -I{} osascript "/Users/henry/Documents/Spotify/restartSpotify.applescript"