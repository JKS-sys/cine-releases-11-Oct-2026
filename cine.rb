cask "cine" do
  arch arm: "aarch64", intel: "x64"
  version "0.1.10"
  sha256 arm: "30e0e63d9c132fd06efc3f993eeaef21df0623071cad1aecf31dbf4d003f12e0", intel: "68bf5fd28458f8820ccd44e85bf14f6a2c01c4b76e6205c1cb6525f2fc4d5cdf"

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
