# CadCraft Homebrew tap

Homebrew tap for [CadCraft Studio](https://getcadcraft.com/studio) on macOS.

```sh
brew tap getcadcraft/tap
brew install --cask cadcraft-studio
```

The cask installs the same disk image as the [download page](https://getcadcraft.com/download?os=macos) and pins its version and SHA-256. Studio updates itself, so the cask is marked `auto_updates`.

**Not notarized yet.** The macOS build is signed ad hoc and Apple has not notarized it, so macOS may refuse to open it the first time. Right-click CadCraft Studio in Applications and choose Open (macOS 15 and later: System Settings > Privacy & Security > Open Anyway). Notarization is planned; the cask will change when the disk image does.

Issues with the app itself: <https://getcadcraft.com/suggest>.
