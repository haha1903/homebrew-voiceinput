cask "ratebar" do
  version "0.1.2"
  sha256 "af3d556839c69ce2d04ea6e78690eedf9c85e3d570446f7ec97feee46bae0625"

  url "https://github.com/haha1903/RateBar/releases/download/v#{version}/RateBar-#{version}.zip"
  name "RateBar"
  desc "macOS menu bar exchange-rate utility (AUD → CNY/USD/JPY/EUR)"
  homepage "https://github.com/haha1903/RateBar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"

  app "RateBar.app"

  zap trash: [
    "~/Library/Preferences/com.peter.ratebar.plist",
    "~/Library/Saved Application State/com.peter.ratebar.savedState",
  ]
end
