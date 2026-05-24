cask "audio-input" do
  on_arm do
    version "0.4.7"
    sha256 "0c9dd723437bf17a38350b0b7ae4c8b0ba25f3d0f8838db2ded68721073dc55b"

    url "https://github.com/tyun08/audio-input/releases/download/v#{version}/Audio.Input_#{version}_aarch64.dmg"
  end

  on_intel do
    version "0.4.7"
    sha256 "36df16994d4cbdaaf04ac18ea62e5469bb34b4e4f670db39218b18572d0c29c3"

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
