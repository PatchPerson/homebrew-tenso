cask "tenso" do
  version "0.3.0"
  sha256 "f5b9fdf79792be43a57ac07f43bde8e6d511b7dcec7b54394b2f6a110ebe3902"

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
