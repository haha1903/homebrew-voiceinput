cask "voice-input" do
  version "0.1.5"
  sha256 "ca8408401b8cb21cda48cf9fee544140dfc1bc89909b7d4041dffbd92dcb8893"

  url "https://github.com/haha1903/voice-input-dist/releases/download/v#{version}/VoiceInput-#{version}.zip"
  name "VoiceInput"
  desc "Offline voice input — hotkey, speak, transcribe locally via WhisperKit"
  homepage "https://github.com/haha1903/voice-input-dist"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "VoiceInput.app"

  zap trash: [
    "~/Library/Application Support/VoiceInput",
    "~/Library/Preferences/me.changhai.VoiceInput.plist",
    "~/Library/Saved Application State/me.changhai.VoiceInput.savedState",
  ]
end
