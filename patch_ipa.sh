unzip Alien_Isolation.ipa
rm Alien_Isolation.ipa
mkdir Payload/Alien\ Isolation.app/Frameworks
perl -pi -e 's/\/System\/Library\/Frameworks\/AVFAudio.framework\/AVFAudio/\@rpath\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/AVFAudio.framework\/AVFAudio/g' Payload/Alien\ Isolation.app/Alien\ Isolation
perl -pi -e 's/\/System\/Library\/Frameworks\/GameController.framework\/GameController/\@rpath\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/GameController.framework\/GameController/g' Payload/Alien\ Isolation.app/Alien\ Isolation
perl -pi -e 's/\<string\>14.8\<\/string\>/\<string\>13.0\<\/string\>/g' Payload/Alien\ Isolation.app/Info.plist
zip -r Alien_Isolation.ipa Payload
rm -rf Payload