mkdir ~/Desktop/Screenshots
defaults write com.apple.screencapture location -string ~/Desktop/Screenshots && killall SystemUIServer
defaults write com.apple.dock mineffect -string scale && killall Dock
defaults write com.apple.dock mru-spaces -bool false && killall Dock
defaults write com.apple.Music userWantsPlaybackNotifications -bool false && killall Music
defaults write com.apple.TextEdit RichText -bool false && killall TextEdit
defaults write com.apple.Safari NSQuitAlwaysKeepsWindows -bool false
