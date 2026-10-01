class Watasu < Formula
  desc "Command-line interface for Watasu"
  homepage "https://github.com/watasuio/watasu-cli"
  version "0.1.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.15/watasu_0.1.15_darwin_arm64.tar.gz"
      sha256 "09e2108904e4158fb677218445929bdfeea0db86c98d976f31040e5c005cf86b"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.15/watasu_0.1.15_darwin_amd64.tar.gz"
      sha256 "4fb5aa4f5ff24723908bdf9037b27fb2518ce6618b8b9ec5b9d271d063b61d22"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.15/watasu_0.1.15_linux_arm64.tar.gz"
      sha256 "beda62b13e0bca1a14a3f928a8f2f1cd2079f8bc7830185e0f645af183a9c3af"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.15/watasu_0.1.15_linux_amd64.tar.gz"
      sha256 "305b36b3d9f87da06190cc4f136c227a807427535190ee3a8c011b3f0180ecda"
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
