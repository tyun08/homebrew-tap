cask "audio-input" do
  version "0.4.0"

  on_arm do
    url "https://github.com/tyun08/audio-input/releases/download/v#{version}/Audio.Input_#{version}_aarch64.dmg"
    sha256 "0f93b56c349878fb8f0cf8871f5f422a163ecf72ca8fed69486a4adf077f8f51"
  end

  on_intel do
    url "https://github.com/tyun08/audio-input/releases/download/v#{version}/Audio.Input_#{version}_x64.dmg"
    sha256 "c8a091b98b1904291efb45f8495ea04e0cf15b9ece0efee00d91c9643d8fc2bc"
  end

  name "Audio Input"
  desc "AI-powered voice input for macOS — transcribe speech into any text field"
  homepage "https://tyun08.github.io/audio-input"

  depends_on macos: ">= :ventura"

  app "Audio Input.app"

  uninstall quit:   "com.audioinput.app",
            delete: "/Applications/Audio Input.app"

  zap trash: [
    "~/Library/Application Support/com.audioinput.app",
    "~/Library/Preferences/com.audioinput.app.plist",
    "~/Library/Logs/com.audioinput.app",
  ]
end
