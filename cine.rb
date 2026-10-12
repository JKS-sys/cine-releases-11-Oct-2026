cask "cine" do
  arch arm: "aarch64", intel: "x64"
  version "0.1.15"
  sha256 arm: "295b170ab9dca9e3985ed5ea9dd3fe74e19828fa3f304066538540a52577c475", intel: "5a61797ac834461dfec21bdca795a4fe45e884e7b942ad9dc53b0952386090ec"

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
