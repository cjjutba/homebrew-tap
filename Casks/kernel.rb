cask "kernel" do
  version "0.5.0"
  sha256 "d1e2d42f3db147d4fa61275799fefb938f50351b86a3172804dfe8a6759d3815"

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
