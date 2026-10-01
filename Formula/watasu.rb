class Watasu < Formula
  desc "Command-line interface for Watasu"
  homepage "https://github.com/watasuio/watasu-cli"
  version "0.1.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.14/watasu_0.1.14_darwin_arm64.tar.gz"
      sha256 "38e23400b91c90f808d6a465fbd50dc058d3da65f1b9f6421059c7cbfd6eb9f6"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.14/watasu_0.1.14_darwin_amd64.tar.gz"
      sha256 "93bc56e8a9489843281c58a0a84c3444ce6dbb079a378d02d395a864193599df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.14/watasu_0.1.14_linux_arm64.tar.gz"
      sha256 "2da20e7db3ca9607d5d07fe83f3d2ea5e1623f8f69d70abda5354705b8310636"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.14/watasu_0.1.14_linux_amd64.tar.gz"
      sha256 "58b2de00efb12c98098798dc229dd7374d62ef1d1e9ea09f0b0f453b7e98df2b"
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
