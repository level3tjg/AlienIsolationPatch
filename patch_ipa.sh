unzip Alien_Isolation.ipa
rm Alien_Isolation.ipa
install_name_tool -change "/System/Library/Frameworks/AVFAudio.framework/AVFAudio" "/System/Library/Frameworks/AVFoundation.framework/Frameworks/AVFAudio.framework/AVFAudio" Payload/Alien\ Isolation.app/Alien\ Isolation
install_name_tool -change "/System/Library/Frameworks/GameController.framework/GameController" "@rpath/GameController.framework/GameController" Payload/Alien\ Isolation.app/Alien\ Isolation
defaults write $(pwd)/Payload/Alien\ Isolation.app/Info MinimumOSVersion -string "13.0"
zip -r Alien_Isolation.ipa Payload
rm -rf Payload