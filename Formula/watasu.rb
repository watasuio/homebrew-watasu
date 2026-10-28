class Watasu < Formula
  desc "Command-line interface for Watasu"
  homepage "https://github.com/watasuio/watasu-cli"
  version "0.1.20"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.20/watasu_0.1.20_darwin_arm64.tar.gz"
      sha256 "68c1d21e3f0f8bd51f82f683d57e3b63ed5e3c16d620059ec5dd9e0dec4be22b"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.20/watasu_0.1.20_darwin_amd64.tar.gz"
      sha256 "a48736adf434bde03c27eeaf52bd72deff410c6d5a092039662a6f1ac64e6a7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.20/watasu_0.1.20_linux_arm64.tar.gz"
      sha256 "30e569249488c5d506336fc6958ac417400da37b54eab7a02c61792fc1b5f335"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.20/watasu_0.1.20_linux_amd64.tar.gz"
      sha256 "e36f2bc64b6b38961b97ffd090a11c5a910911ea662088183c558be245d2df25"
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
