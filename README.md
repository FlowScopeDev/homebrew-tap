# FlowScope Homebrew tap

The Homebrew cask for [FlowScope](https://github.com/FlowScopeDev/flowscope) — record Android UI
flows and replay them as durable, declarative tests.

```bash
brew tap FlowScopeDev/homebrew-tap
brew trust --cask flowscopedev/tap/flowscope
brew install --cask flowscope
xattr -cr "/Applications/Flow Scope.app"
```

`brew trust` is required because Homebrew refuses to load casks from third-party taps until you
trust them.

The last line is required too. FlowScope is not signed with an Apple Developer ID — it is a
one-person project, and that certificate costs money every year — so macOS quarantines it and will
not open it until that attribute is cleared. **Homebrew does not clear it for you:** Cask applies
quarantine deliberately, and there is no longer a flag to opt out. Right-clicking the app and
choosing Open works too.

The cask is worth using for the checksum Homebrew verifies before installing and for managed
upgrades and uninstalls (`brew uninstall --cask flowscope`), not for a quieter first launch.

Installing the DMG by hand from the
[releases page](https://github.com/FlowScopeDev/flowscope/releases) needs the same final step; see
[INSTALL.md](https://github.com/FlowScopeDev/flowscope/blob/main/INSTALL.md).

The cask is generated from `release/homebrew/flowscope.rb` in the main repository, so the two never
drift apart. Issues and pull requests belong on
[FlowScopeDev/flowscope](https://github.com/FlowScopeDev/flowscope/issues).
