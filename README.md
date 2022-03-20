# Alien Isolation Patch

Patch Alien Isolation iOS app to work on any iOS 13+ device (Without keyboard & mouse support / cloud saves)

## Requirements

- [theos](https://github.com/theos/theos)
- [theos-jailed](https://github.com/kabiroberai/theos-jailed)
- iOS 13.7 sdk placed in $THEOS/sdks
- Decrypted Alien Isolation IPA

## Building

1. Place the decrypted IPA in the project directory and rename it to "Alien_Isolation.ipa"
2. Run the `patch_ipa.sh` script
3. Compile using theos (`make package`)
