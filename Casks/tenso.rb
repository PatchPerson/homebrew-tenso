cask "tenso" do
  version "0.4.5"
  sha256 "bd61c6715fcdc74da21d2a620ef1591849ac916bc73c1514afe77ffd6d856eb2"

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
