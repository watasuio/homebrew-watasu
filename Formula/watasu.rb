class Watasu < Formula
  desc "Command-line interface for Watasu"
  homepage "https://github.com/watasuio/watasu-cli"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.0/watasu_0.1.0_darwin_arm64.tar.gz"
      sha256 "41ffed9c983f00111b6802e72e019df915a86bbd8cc28394262eb9c603a22e9e"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.0/watasu_0.1.0_darwin_amd64.tar.gz"
      sha256 "58227a5e5f508bf304fb01c6220c9d676e9773167458867178a0c03299b01831"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.0/watasu_0.1.0_linux_arm64.tar.gz"
      sha256 "8b16993a305dbd6df033856cb9975c83b94f285f2cb5b28da6e8799c23c27157"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.0/watasu_0.1.0_linux_amd64.tar.gz"
      sha256 "89b80ddab13fa23595a8fd2cf917c4a0be84b4dc2ec444cad35a29d7efba64b7"
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
