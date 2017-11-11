sudo cp ./autotheme.sh /usr/local/bin
sudo cp ./com.sublime.autotheme.plist ~/Library/LaunchAgents/
launchctl load ~/Library/LaunchAgents/com.sublime.autotheme.plist
launchctl start com.sublime.autotheme.plist