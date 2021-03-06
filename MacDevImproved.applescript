

set theDocument to choose file with prompt "Please select a document to process:"

set selectedFile to POSIX path of theDocument
set selectedFolder to POSIX path of ((theDocument as text) & "::")
tell application "Spectacle" to launch
delay 5

tell application "System Events"
	tell application "Mission Control" to launch
	tell group 2 of group 1 of group 1 of process "Dock"
		click (every button whose value of attribute "AXDescription" is "add desktop")
		tell list 1
			set countSpaces to count of buttons
			delay 0.5
			click button (countSpaces)
			delay 1
		end tell
	end tell
end tell
delay 2


tell application "iTerm"
	delay 0.5
	# Open terminal, navigate to given file and use nvim
	set MainTerminal to (create window with default profile)
	tell current session of MainTerminal
		write text "cd " & selectedFolder
		write text "nvim " & selectedFile
	end tell
	tell MainTerminal to activate
	
	# Full screen by using Spectacle key combination
	tell application "System Events"
		delay 2
		key code 3 using {command down, option down}
	end tell
	
	# Add another tab and cd to folder of the given file.
	tell current window
		create tab with default profile
	end tell
	tell current session of current window
		write text "cd " & selectedFolder
	end tell
	
	# Switch back to tab 1
	tell application "System Events"
		delay 0.25
		key code 18 using {command down}
	end tell	
end tell