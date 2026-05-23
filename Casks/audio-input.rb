cask "audio-input" do
  on_arm do
    version "0.4.5"
    sha256 "dfe2ad92692c71e8fd6fec575809aca5cc92a84ecaf871750d71dc17315212d8"

    url "https://github.com/tyun08/audio-input/releases/download/v#{version}/Audio.Input_#{version}_aarch64.dmg"
  end

  on_intel do
    version "0.4.4"
    sha256 "b6ce7d826dc311f39ff38fc0ec27591975b6d670302ae4809837130e5d60b019"

    url "https://github.com/tyun08/audio-input/releases/download/v#{version}/Audio.Input_#{version}_x64.dmg"
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
