class Watasu < Formula
  desc "Command-line interface for Watasu"
  homepage "https://github.com/watasuio/watasu-cli"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.3/watasu_0.1.3_darwin_arm64.tar.gz"
      sha256 "ca82a60a080c420309d6945fb913ed417b2ac2e655e1eacca9e52ce4e0975c6b"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.3/watasu_0.1.3_darwin_amd64.tar.gz"
      sha256 "126fb43f9ca8215408b899d050385fdf2ae3968507a3cb91a1e1b187920919a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.3/watasu_0.1.3_linux_arm64.tar.gz"
      sha256 "88cd6ce9855437e53b6afbeca13ac12ec590de9b81bdfc675fd95ff8f4242e45"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.3/watasu_0.1.3_linux_amd64.tar.gz"
      sha256 "ac767052d93987cf1a6cec2db2eddafab00b112f57525a2a6893be4369cf2585"
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
