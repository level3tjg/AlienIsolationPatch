# Alien Isolation Patch

Patch Alien Isolation iOS app to work on any iOS 13+ device (Without keyboard & mouse support)

---

**Xcode command line tools are required for the ipa patching script so only builds on macOS *(for now)***

---

## Requirements

1. [theos](https://github.com/theos/theos)
2. [theos-jailed](https://github.com/kabiroberai/theos-jailed)
3. Decrypted Alien Isolation IPA

## Building

1. Place the decrypted IPA in the project directory and rename it to "Alien_Isolation.ipa"
2. Run the `patch_ipa.sh` script
3. Compile using theos (`make package`)
