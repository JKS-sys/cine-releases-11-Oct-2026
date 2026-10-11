cask "cine" do
  arch arm: "aarch64", intel: "x64"
  version "0.1.4"
  sha256 arm: "ba5dd1224b080a2d92765aa757c13abe85e63f5c1f689a2e5f65c0508faeb06e", intel: "edbc4f9b1cd70d3b7a9ca38faa41e86bce235f874ac563fef9e07e521e189944"

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
