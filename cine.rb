cask "cine" do
  arch arm: "aarch64", intel: "x64"
  version "0.1.3"
  sha256 arm: "c11ca4398359e80466142fd28f42c8506613149d706ecbe8c76d267ae7520567", intel: "0744edbce29a99c4cad9e6d83afd33488cf18114c010c2bc980d0077c804dcdc"

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
