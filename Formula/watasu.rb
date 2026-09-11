class Watasu < Formula
  desc "Command-line interface for Watasu"
  homepage "https://github.com/watasuio/watasu-cli"
  version "0.1.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.13/watasu_0.1.13_darwin_arm64.tar.gz"
      sha256 "84f846611e3ec013644531d08db25f787270f57000d7b804576cd3b1bd74b868"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.13/watasu_0.1.13_darwin_amd64.tar.gz"
      sha256 "f730957964dfc8170a21ec3ffc43ad474e0f4c876cf32f810cf65ae837d3a475"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.13/watasu_0.1.13_linux_arm64.tar.gz"
      sha256 "ef3da3abf6a94d7951a08c4b4c681b6bcf2c101a9948bf46f443125ddc842396"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.13/watasu_0.1.13_linux_amd64.tar.gz"
      sha256 "d421e52cf18c2ffc88eb321d636d551d74550bd2f06524177fa870376bb627fa"
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
