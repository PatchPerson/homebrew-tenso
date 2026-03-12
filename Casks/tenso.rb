cask "tenso" do
  version "0.4.1"
  sha256 "fb142170d57a361ee3b310edb431aafcab7ecce8f53d93fcc82127278f817b84"

  url "https://github.com/PatchPerson/Tenso/releases/download/v#{version}/Tenso_#{version}_aarch64.dmg"
  name "Tenso"
  desc "API client for developers"
  homepage "https://github.com/PatchPerson/Tenso"

  depends_on arch: :arm64

  auto_updates true

  app "Tenso.app", no_quarantine: true

  zap trash: [
    "~/Library/Application Support/com.tenso.desktop",
    "~/Library/Caches/com.tenso.desktop",
    "~/Library/Preferences/com.tenso.desktop.plist",
  ]
end
