cask "audio-input" do
  version "0.4.3"

  on_arm do
    url "https://github.com/tyun08/audio-input/releases/download/v#{version}/Audio.Input_#{version}_aarch64.dmg"
    sha256 "66ab95e0f21666547ca6484e67c7943bcd7be6a9a7ee13c2823f8bbdee2cde34"
  end

  on_intel do
    url "https://github.com/tyun08/audio-input/releases/download/v#{version}/Audio.Input_#{version}_x64.dmg"
    sha256 "b6ce7d826dc311f39ff38fc0ec27591975b6d670302ae4809837130e5d60b019"
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
