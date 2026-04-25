cask "voice-input" do
  version "0.1.3"
  sha256 "73a1953dee2288f43f45fd285dc4e735d537eae3213ff47f37182f6d769302cb"

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
