cask "cine" do
  arch arm: "aarch64", intel: "x64"
  version "0.1.11"
  sha256 arm: "1669806c9af535b765153f5e41789b906c6ff8cb23edf100bee49862007c1398", intel: "8de2edc325b9b48be241430060b95311c0d5d5610afa055dbc394ac621bc829c"

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
