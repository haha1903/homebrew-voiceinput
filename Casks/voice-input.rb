cask "voice-input" do
  version "0.1.6"
  sha256 "902bf187117397bc13ecaccd7067aae15456a9f7aca930ae62bb79b41411efce"

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
