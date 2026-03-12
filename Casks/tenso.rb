cask "tenso" do
  version "0.4.4"
  sha256 "7dee8768684b1f048941c92273d0a5c1186387a9a88249b6de5ae21e07778c85"

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
