cask "cine" do
  arch arm: "aarch64", intel: "x64"
  version "0.1.13"
  sha256 arm: "40567948054df8194045fe54e989ddeb5c8b59cc674c1cdc6613be1a558eafcc", intel: "95b30d80b7d24c2cc3d9be22dfa69432baa50cecf1bc19bc8c16f20be969122f"

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
