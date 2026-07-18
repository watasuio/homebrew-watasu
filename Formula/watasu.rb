class Watasu < Formula
  desc "Command-line interface for Watasu"
  homepage "https://github.com/watasuio/watasu-cli"
  version "0.1.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.8/watasu_0.1.8_darwin_arm64.tar.gz"
      sha256 "40c4084b54a9caa181cab59ae6f163108a0b1c50cfc850f96cbc739f40fdc24b"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.8/watasu_0.1.8_darwin_amd64.tar.gz"
      sha256 "3f404918122f541429938a249d7fd583eb676619a719e31793251b0704c0c240"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.8/watasu_0.1.8_linux_arm64.tar.gz"
      sha256 "1fdfb7ab752ab7848a4651777f3c345ea49c20e8bcdf526c2437d30f7e6a418e"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.8/watasu_0.1.8_linux_amd64.tar.gz"
      sha256 "a5ea1d081a39d97340f231573c05a79497028f837bd3b80e964303f333462849"
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
