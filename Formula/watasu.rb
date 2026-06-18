class Watasu < Formula
  desc "Command-line interface for Watasu"
  homepage "https://github.com/watasuio/watasu-cli"
  version "0.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.6/watasu_0.1.6_darwin_arm64.tar.gz"
      sha256 "3d5de07549ee878e8c055779be79a3f2e68846d5cbf386ff0639d54f1f66d695"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.6/watasu_0.1.6_darwin_amd64.tar.gz"
      sha256 "13a1a8949337403c8a71d8304c5a86b846c87bad268af6ee167d140cc1fa142c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.6/watasu_0.1.6_linux_arm64.tar.gz"
      sha256 "06e6df40dd19083283dbe5e9e280809df9064c76c62df169d67361cfbb203418"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.6/watasu_0.1.6_linux_amd64.tar.gz"
      sha256 "4ba8f852093b2b8356c699c236793c35e93baab94973ec3e357ba758df19d07f"
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
