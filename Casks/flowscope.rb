cask "flowscope" do
  version "1.0.0"
  sha256 "94c6acf9c5eeaa8bbc0a5ccfb7cff0223f5ed2e0b950a9a2f3741454ea9775cd"

  url "https://github.com/FlowScopeDev/flowscope/releases/download/v#{version}/FlowScope-#{version}.dmg"
  name "Flow Scope"
  desc "Record, inspect, and replay Android UI flows as declarative tests"
  homepage "https://github.com/FlowScopeDev/flowscope"

  # Reads GitHub's latest-release endpoint, which skips pre-releases — the same endpoint the
  # app's own update check uses, so the two agree about what counts as released.
  livecheck do
    url :url
    strategy :github_latest
  end

  # The app is unsigned, so a hand-installed DMG trips Gatekeeper's "damaged" dialog. Homebrew
  # clears the quarantine attribute from what it downloads, which is why the cask is the
  # recommended install path in the README.
  depends_on macos: :big_sur

  app "Flow Scope.app"

  # FlowScope writes to exactly two roots: a project directory the user chose, and ~/.flowscope.
  # Only the latter belongs to the app — a project is the user's own work and is never zapped.
  zap trash: [
    "~/.flowscope",
    "~/Library/Preferences/dev.flowscope.ide.plist",
    "~/Library/Saved Application State/dev.flowscope.ide.savedState",
  ]
end
