cask "ratebar" do
  version "0.1.1"
  sha256 "eb9a013266377700a1d637c5ac100b37ad02d38cdcac4aec93ce1d45c86a9979"

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
