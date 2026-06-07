class Watasu < Formula
  desc "Command-line interface for Watasu"
  homepage "https://github.com/watasuio/watasu-cli"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.4/watasu_0.1.4_darwin_arm64.tar.gz"
      sha256 "8d73393a6d89bbdd3273709917060b783bce831b8cec71bf9ecbe06b02faef3e"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.4/watasu_0.1.4_darwin_amd64.tar.gz"
      sha256 "7123395484cc4ea3d04d6553dfde3fb96e99e818731490fad6c21168f0fe6478"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.4/watasu_0.1.4_linux_arm64.tar.gz"
      sha256 "0325ebfdd9b9059b77d4e834e8be40e8275e2339c245423dfb2dcbea6c252c8a"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.4/watasu_0.1.4_linux_amd64.tar.gz"
      sha256 "da47a4e5a839e9214b6876778afd0bd50a5cd7697bb4172121c9496415c0e5a7"
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
