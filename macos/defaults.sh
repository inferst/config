# MacOS defaults

# CapsLock delay
hidutil property --set '{"CapsLockDelayOverride":0}'

# Dock
defaults write com.apple.dock "tilesize" -int "60"
defaults write com.apple.dock "largesize" -int "68"
defaults write com.apple.dock "mineffect" -string "scale"
defaults write com.apple.dock "autohide" -bool "true"
defaults write com.apple.dock "show-recents" -bool "false"

# Set dock auto hide delay to 0
defaults write com.apple.dock autohide-delay -float 0;
