class Watasu < Formula
  desc "Command-line interface for Watasu"
  homepage "https://github.com/watasuio/watasu-cli"
  version "0.1.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.11/watasu_0.1.11_darwin_arm64.tar.gz"
      sha256 "b5794fc62b53c5a0f2d9f31ce22721a5a9fa4ddcd62f03fd91f40014aa6159fc"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.11/watasu_0.1.11_darwin_amd64.tar.gz"
      sha256 "7e6ea4dbec44d3c8e42c7141dbbf0817c7f858d79691477eb3868b23fee59bff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.11/watasu_0.1.11_linux_arm64.tar.gz"
      sha256 "55189eb5145352513497dad039c1466c7279e37ba3fce31de5912160038bb4c6"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.11/watasu_0.1.11_linux_amd64.tar.gz"
      sha256 "3390f6eace5e1cc59479e5d3c3b65f955297a7898754f6be8c5051ba84fa0828"
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
