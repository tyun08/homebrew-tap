cask "audio-input" do
  version "0.3.7"

  on_arm do
    url "https://github.com/tyun08/audio-input/releases/download/v#{version}/Audio%20Input_#{version}_aarch64.dmg"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5" # Run: shasum -a 256 Audio\ Input_#{version}_aarch64.dmg
  end

  on_intel do
    url "https://github.com/tyun08/audio-input/releases/download/v#{version}/Audio%20Input_#{version}_x64.dmg"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5" # Run: shasum -a 256 Audio\ Input_#{version}_x64.dmg
  end

  name "Audio Input"
  desc "AI-powered voice input for macOS — transcribe speech into any text field"
  homepage "https://tyun08.github.io/audio-input"

  depends_on macos: ">= :ventura"

  app "Audio Input.app"

  # conflicts_with cask: "audio-input-bin"

  uninstall quit:   "com.audioinput.app",
            delete: "/Applications/Audio Input.app"

  zap trash: [
    "~/Library/Application Support/com.audioinput.app",
    "~/Library/Preferences/com.audioinput.app.plist",
    "~/Library/Logs/com.audioinput.app",
  ]
end
