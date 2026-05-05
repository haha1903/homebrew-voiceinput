cask "ratebar" do
  version "0.1.0"
  sha256 "668e376d6f935c2a373a85a58c4df33da792b56723f67a866e9f67b3111e5321"

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
