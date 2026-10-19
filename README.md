# FlowScope Homebrew tap

The Homebrew cask for [FlowScope](https://github.com/FlowScopeDev/flowscope) — record Android UI
flows and replay them as durable, declarative tests.

```bash
brew tap FlowScopeDev/homebrew-tap
brew install --cask flowscope
```

FlowScope is not signed with an Apple Developer ID — it is a one-person project, and that
certificate costs money every year. macOS therefore reports a directly downloaded DMG as damaged.
Homebrew clears the quarantine attribute from what it downloads, so installing through this cask
avoids that entirely. That is why the cask is the recommended install path.

Installing the DMG by hand from the
[releases page](https://github.com/FlowScopeDev/flowscope/releases) also works, with one extra
step; see
[INSTALL.md](https://github.com/FlowScopeDev/flowscope/blob/main/INSTALL.md).

The cask is generated from `release/homebrew/flowscope.rb` in the main repository, so the two never
drift apart. Issues and pull requests belong on
[FlowScopeDev/flowscope](https://github.com/FlowScopeDev/flowscope/issues).
