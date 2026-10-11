cask "cine" do
  arch arm: "aarch64", intel: "x64"
  version "0.1.12"
  sha256 arm: "6289b88a43ddc876bb73e08824ececb42621bd98d113cddf49357c4e169b287e", intel: "ec975311f1752bb50af63ea42e524bcab2fb88a997b26094d48bfcdbd1ec013a"

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
