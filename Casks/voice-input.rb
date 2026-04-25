cask "voice-input" do
  version "0.1.1"
  sha256 "56922e8fe214675f6b356de9705bdf5b64b087a011fb362ea8fd3dde9b8fb45b"

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
