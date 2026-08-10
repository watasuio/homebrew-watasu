class Watasu < Formula
  desc "Command-line interface for Watasu"
  homepage "https://github.com/watasuio/watasu-cli"
  version "0.1.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.9/watasu_0.1.9_darwin_arm64.tar.gz"
      sha256 "d8796475a9cb86a93b2a1ef398c8f85a61ce4ab2d64b6c60bed861dbaf9575ef"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.9/watasu_0.1.9_darwin_amd64.tar.gz"
      sha256 "838ebe629f143411e593c0c59939e5b1f8dbab6645273ff661479a123a8428bf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.9/watasu_0.1.9_linux_arm64.tar.gz"
      sha256 "527e72b30a8df3a400bccbdf6418d1baa823a56b965502003bc317c76770d9bd"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.9/watasu_0.1.9_linux_amd64.tar.gz"
      sha256 "e03713960dd6a6e8e07b2fb59cdbd4fe4fc4272ecce8882dbb38b195ca674109"
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
