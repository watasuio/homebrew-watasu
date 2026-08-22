class Watasu < Formula
  desc "Command-line interface for Watasu"
  homepage "https://github.com/watasuio/watasu-cli"
  version "0.1.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.10/watasu_0.1.10_darwin_arm64.tar.gz"
      sha256 "aee4cc326b71bb4f659685728f94a61abe21cf2ed13615d7e8bc7f8af432b6b4"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.10/watasu_0.1.10_darwin_amd64.tar.gz"
      sha256 "0603b81dcdb8b9b549e62c6ddd7274c5b421f4781cc4109783f77414cc2c25ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.10/watasu_0.1.10_linux_arm64.tar.gz"
      sha256 "6bccffbe09336220a247906d630baa5cae34a2f1a9607e831d0a40506c30d1a3"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.10/watasu_0.1.10_linux_amd64.tar.gz"
      sha256 "957a759caeeda970f733c6dfaaca4ccca9dd2bdb61fb2d3ff2d01195011adf6f"
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
