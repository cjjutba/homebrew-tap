cask "kernel" do
  version "0.6.0"
  sha256 "b7f327db0caa6da9b0eb051b5496f7747de77406e481b0099605987840f6dd5b"

  url "https://github.com/cjjutba/kernel/releases/download/v#{version}/Kernel-arm64.dmg"
  name "Kernel"
  desc "Claude Code and Codex agents working as a team"
  homepage "https://github.com/cjjutba/kernel"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Kernel.app"

  zap trash: [
    "~/Library/Application Support/Kernel",
    "~/Library/Caches/com.cjjutba.kernel",
    "~/Library/Caches/com.cjjutba.kernel.ShipIt",
    "~/Library/Preferences/com.cjjutba.kernel.plist",
  ]
end
