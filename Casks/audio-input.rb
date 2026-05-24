cask "audio-input" do
  on_arm do
    version "0.4.8"
    sha256 "3f12afe00ce7814f9d5499296f7c6eb2ce7aada8e28d776b223bb864ffb0c283"

    url "https://github.com/tyun08/audio-input/releases/download/v#{version}/Audio.Input_#{version}_aarch64.dmg"
  end

  on_intel do
    version "0.4.8"
    sha256 "54ae3f29f1530e07244d1283b3f424c8f80d3343972e8b2552f8e1b9aea9eabe"

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
