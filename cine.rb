cask "cine" do
  arch arm: "aarch64", intel: "x64"
  version "0.1.7"
  sha256 arm: "2c17e6dd1ef54152498dae9116b18b941d5b6ee0f814b0a11d2d4f76e1da2d89", intel: "1a87210ddaaec8dbb6fa9e9eaa46be4d272b3d75522fd2624f99a2d96ede3c41"

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
