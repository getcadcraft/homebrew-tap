# CadCraft Homebrew tap

Homebrew tap for [CadCraft Studio](https://getcadcraft.com/studio) on macOS.

**Status: nothing is published here yet.** The cask will be added after the macOS `.dmg` is notarized by Apple, so that Gatekeeper opens it without warnings. Until then, download Studio from <https://getcadcraft.com/download>.

When it is available:

```sh
brew tap getcadcraft/tap
brew install --cask cadcraft-studio
```

The cask pins the version and SHA-256 of the published `.dmg`. Studio updates itself, so the cask is marked `auto_updates`.

Issues with the app itself: <https://getcadcraft.com/suggest>.
