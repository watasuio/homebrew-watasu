class Watasu < Formula
  desc "Command-line interface for Watasu"
  homepage "https://github.com/watasuio/watasu-cli"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.2/watasu_0.1.2_darwin_arm64.tar.gz"
      sha256 "1e1b26875db5d27a89611faf3d37043c1279fa400b8742460f5f36d09cc6917a"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.2/watasu_0.1.2_darwin_amd64.tar.gz"
      sha256 "11ce9c4781ec7b059dcc1c5fbfe133d3253699ab1ca59783cf1c2d64ade403ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.2/watasu_0.1.2_linux_arm64.tar.gz"
      sha256 "c722924b9efe50318025941c1f137afee3c47b9d3b81f4872236ad9358ed039f"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.2/watasu_0.1.2_linux_amd64.tar.gz"
      sha256 "e316fe4854f71097cf64a781a2293e223851f2095b7fe5d0829a89d1df42a8f1"
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
