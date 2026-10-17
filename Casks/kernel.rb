cask "kernel" do
  version "0.7.0"
  sha256 "dd78160f0addbc003dd2ec920889d440da9c9cc94caf7cdf1748ed5ae15bd2fa"

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
