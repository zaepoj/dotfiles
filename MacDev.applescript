

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
	set termOne to (create window with default profile)
	tell current session of termOne
		write text "cd " & selectedFolder
		write text "nvim " & selectedFile
	end tell
	tell termOne to activate
	tell application "System Events"
		key code 123 using {command down, option down}
		delay 0.5
		key code 123 using {command down, option down}
		delay 0.5
		
	end tell
	
	delay 0.5
	set termTwo to (create window with default profile)
	tell current session of termTwo
		write text "cd " & selectedFolder
	end tell
	delay 0.5
	tell current window to activate
	tell application "System Events"
		key code 124 using {command down, option down}
		delay 0.5
		key code 124 using {command down, option down}
		delay 0.5
		key code 124 using {command down, option down}
		
	end tell
end tell