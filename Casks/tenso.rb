cask "tenso" do
  version "0.4.0"
  sha256 "f23c043727d47194db8e2e4cc06fa8fdf4e986291f7717687aae82a21d7be50e"

  url "https://github.com/PatchPerson/Tenso/releases/download/v#{version}/Tenso_#{version}_aarch64.dmg"
  name "Tenso"
  desc "API client for developers"
  homepage "https://github.com/PatchPerson/Tenso"

  depends_on arch: :arm64

  auto_updates true

  app "Tenso.app"

  zap trash: [
    "~/Library/Application Support/com.tenso.desktop",
    "~/Library/Caches/com.tenso.desktop",
    "~/Library/Preferences/com.tenso.desktop.plist",
  ]
end
