class Watasu < Formula
  desc "Command-line interface for Watasu"
  homepage "https://github.com/watasuio/watasu-cli"
  version "0.1.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.17/watasu_0.1.17_darwin_arm64.tar.gz"
      sha256 "37b33e71a6379e174b5c692eb644281a3a163a0881c90e4c29e600009747c1d7"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.17/watasu_0.1.17_darwin_amd64.tar.gz"
      sha256 "6de9119e7b0ab76eb2dee8876381efd0149e4a799f87dac4d0e0c589ed5675ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.17/watasu_0.1.17_linux_arm64.tar.gz"
      sha256 "2228d207e108065844cc3866166488e852c30b969900fddcb1f1b6f7d8b2587e"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.17/watasu_0.1.17_linux_amd64.tar.gz"
      sha256 "f7953a13d72286b370f78d2b6039360b0f0a4f3494caf66d6c0e9c8262a0becc"
    end
  end

  def install
    bin.install "watasu"
  end

  test do
    output = shell_output("#{bin}/watasu --help")
    assert_match "Watasu", output
  end
end
