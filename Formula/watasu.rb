class Watasu < Formula
  desc "Command-line interface for Watasu"
  homepage "https://github.com/watasuio/watasu-cli"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.5/watasu_0.1.5_darwin_arm64.tar.gz"
      sha256 "703c1cc873a8a48af4bc997fcba1bab78ed1c81ca1a96fe8e9872acbce4c90f3"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.5/watasu_0.1.5_darwin_amd64.tar.gz"
      sha256 "9d967bbe792d2081f5761f8ced86098795c66155ca2e3f91264803cc7c876f90"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.5/watasu_0.1.5_linux_arm64.tar.gz"
      sha256 "b44e2bb08e51920adfb6d93383aa259c9f3ae1a8105d24159f299bf59fc9db3e"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.5/watasu_0.1.5_linux_amd64.tar.gz"
      sha256 "ff3652f2dd373044646f6f2b18d502c7463a76428af2c5e6dfb3096cecd24810"
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
