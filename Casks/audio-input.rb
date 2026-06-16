cask "audio-input" do
  on_arm do
    version "0.4.16"
    sha256 "300597635412348660ec121f5ab300bbfdfaf102ec45d5ee92741d9258d589da"

    url "https://github.com/tyun08/audio-input/releases/download/v#{version}/Audio.Input_#{version}_aarch64.dmg"
  end

  on_intel do
    version "0.4.16"
    sha256 "a04565630c923b9940397b8821c9bb78932aff1490175406b026c6184e1973c3"

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
