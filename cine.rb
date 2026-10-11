cask "cine" do
  arch arm: "aarch64", intel: "x64"
  version "0.1.5"
  sha256 arm: "586c82a354802c2aabc66be65d09c59186b0930f209c5e91f5fa30b59e2ca8c3", intel: "598f5a352758eb98f325a586c17c5f6abbc99f10e603925629546ef4fcf9615e"

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
