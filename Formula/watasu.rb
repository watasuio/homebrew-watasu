class Watasu < Formula
  desc "Command-line interface for Watasu"
  homepage "https://github.com/watasuio/watasu-cli"
  version "0.1.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.12/watasu_0.1.12_darwin_arm64.tar.gz"
      sha256 "9e03b252de81953c2490c1c087dc8df4e13cac4b636e1bb2b4b369c7f4b51bb8"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.12/watasu_0.1.12_darwin_amd64.tar.gz"
      sha256 "c5da286c81736d15177be868293ba9368030a493446f9f577206a209af3f942c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.12/watasu_0.1.12_linux_arm64.tar.gz"
      sha256 "00c9668ed119f55a48ad99c61ea5402bb7b6f9afd2c1e1cd8d4273fc2e24c9a4"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.12/watasu_0.1.12_linux_amd64.tar.gz"
      sha256 "73e947aeca9bac6ca8a5fd8a9e9dfe94f41f8816fba293ed9f36f8341798bf13"
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
