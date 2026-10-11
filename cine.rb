cask "cine" do
  arch arm: "aarch64", intel: "x64"
  version "0.1.2"
  sha256 arm: "f38c675ef4fbc584bba59ab4cc9ee069a20602875f4349c4eeb6ee44fb382cc8", intel: "817f61a7e124367b48c6943fe009871eb2094958acb08e7cffe63102efc67d81"

  url "https://github.com/JKS-sys/cine-releases-11-Oct-2026/releases/download/v#{version}/Cine_#{version}_#{arch}.dmg"
  name "Cine"
  desc "Tiny media player: every format, every setting remembered"
  homepage "https://ipconfig.co.network/cine"

  depends_on macos: ">= :big_sur"
  app "Cine.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Cine.app"]
  end

  zap trash: "~/Library/Application Support/network.ipconfig.cine"
end
