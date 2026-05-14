class Watasu < Formula
  desc "Command-line interface for Watasu"
  homepage "https://github.com/watasuio/watasu-cli"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.1/watasu_0.1.1_darwin_arm64.tar.gz"
      sha256 "56e59af92c0f34c3efdd3fc17bc0dd57bd4dc051d2b13ffe039a3e2b570967b6"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.1/watasu_0.1.1_darwin_amd64.tar.gz"
      sha256 "5e51f92cd767bd02790243c8641098c2de677f8afb6d4a379e996f33714bee44"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.1/watasu_0.1.1_linux_arm64.tar.gz"
      sha256 "b214421e12e7ec0f836c01b0a64f82d546a78dac916026104853191bfa76ffc7"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.1/watasu_0.1.1_linux_amd64.tar.gz"
      sha256 "0077276a2ce54ee8972115cd1bb82f31397a847024b44c614c581b65038cb011"
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
