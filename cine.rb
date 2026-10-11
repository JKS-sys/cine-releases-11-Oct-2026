cask "cine" do
  arch arm: "aarch64", intel: "x64"
  version "0.1.9"
  sha256 arm: "711130ab9d0d00ff9d3b105ea3c49d8952dc21e69d58906b3b5b98959be572d4", intel: "879cc3d7375d40475613272208f6c29f1e11c003083b59443c2757d9f420dbfe"

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
