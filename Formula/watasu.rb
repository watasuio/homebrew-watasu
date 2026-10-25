class Watasu < Formula
  desc "Command-line interface for Watasu"
  homepage "https://github.com/watasuio/watasu-cli"
  version "0.1.19"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.19/watasu_0.1.19_darwin_arm64.tar.gz"
      sha256 "c489ba849c59b97e122d6758bcab792b04e561246197b9adcc11049de44a4331"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.19/watasu_0.1.19_darwin_amd64.tar.gz"
      sha256 "cd0efd4046b0bd7189103df671bec8b9a9021cb6b0f84749a8e9f3d7cd50899a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.19/watasu_0.1.19_linux_arm64.tar.gz"
      sha256 "530d1b7deb95df62bd025a22ec84b73592f7c38307d7036afb18ab0ea4b578cc"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.19/watasu_0.1.19_linux_amd64.tar.gz"
      sha256 "e014713a172a239a1bc6b93851f70bd9a73edbb4e415a3ffde6ea8cea90292e3"
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
