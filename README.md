# homebrew-voiceinput

Homebrew Cask tap for [VoiceInput](https://github.com/haha1903/voice-input-dist) — a minimal macOS menu-bar app for offline voice input. Press a hotkey, speak, press again, and your speech is transcribed locally by [WhisperKit](https://github.com/argmaxinc/WhisperKit) and injected into the focused text field.

## Install

```bash
brew install --cask haha1903/voiceinput/voice-input
```

## Update

```bash
brew update
brew upgrade --cask haha1903/voiceinput/voice-input
```

## Uninstall

```bash
brew uninstall --cask haha1903/voiceinput/voice-input
```

To also remove user data (`~/Library/Application Support/VoiceInput`, preferences, saved state):

```bash
brew uninstall --cask --zap haha1903/voiceinput/voice-input
```

## Requirements

- macOS 14 (Sonoma) or later
- Apple Silicon recommended (Neural Engine speeds up Whisper inference dramatically)

## After install

1. Open **VoiceInput** from Applications.
2. Grant **Accessibility** permission when prompted (needed to inject keystrokes into the focused app).
3. Grant **Microphone** permission the first time you trigger recording.
4. Default hotkey is **Right ⌘** — press once to start, press again to stop. Change it from the menu-bar icon.

The first launch downloads the Whisper `large-v3-turbo` Core ML model (~3 GB) into `~/Library/Application Support/VoiceInput/`. Subsequent launches are fully offline.
