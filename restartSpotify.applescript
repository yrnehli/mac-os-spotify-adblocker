tell application "Spotify" to set spotifyUrl to (get spotify url of current track)

if spotifyUrl contains "spotify:ad" then
	tell application "System Events"
		set spotifyIsInBackground to true
		set spotifyWindows to (get every window of application process "Spotify")
		repeat with spotifyWindow in spotifyWindows
			if description of spotifyWindow is not "dialog" then set spotifyIsInBackground to false
		end repeat
	end tell
	
	tell application "Spotify" to quit
	
	repeat
		tell application "System Events"
			if "Spotify" is not in (name of application processes) then exit repeat
		end tell
		delay 0.5
	end repeat
	
	if spotifyIsInBackground is true then
		do shell script "open --hide --background -b com.spotify.client"
	else
		do shell script "open -b com.spotify.client"
	end if
	
	tell application "Spotify" to play
end if