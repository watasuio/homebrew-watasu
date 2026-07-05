class Watasu < Formula
  desc "Command-line interface for Watasu"
  homepage "https://github.com/watasuio/watasu-cli"
  version "0.1.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.7/watasu_0.1.7_darwin_arm64.tar.gz"
      sha256 "824fafa29d037799cc6bcd64ee30a493b8fc2bacdd3c71641784986dadd1e5b1"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.7/watasu_0.1.7_darwin_amd64.tar.gz"
      sha256 "c499a70062f2ccfd22ea7b0dc3458538e7e8c5a81c1edbf5b54b629bab65b9ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.7/watasu_0.1.7_linux_arm64.tar.gz"
      sha256 "9f3cef417ae279bcf1839714a8a6dbac30a817a5a2f9a9a1f96c8b14e44c79d3"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.7/watasu_0.1.7_linux_amd64.tar.gz"
      sha256 "dc5a74fca8f2d0200f63b3d9b40ec3b909b1e4e4207927c601461d32b159e9d5"
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
