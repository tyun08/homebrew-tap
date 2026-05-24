cask "audio-input" do
  on_arm do
    version "0.4.10"
    sha256 "31c72ee9d57bce43c8df0beaea23c2d3b4dc23487d57ebbfe906ce82e2210ca5"

    url "https://github.com/tyun08/audio-input/releases/download/v#{version}/Audio.Input_#{version}_aarch64.dmg"
  end

  on_intel do
    version "0.4.10"
    sha256 "fa112c799ffabe0f72f88f748fb15fac4a0c03ea3c5251e76fbd878066873c8c"

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
