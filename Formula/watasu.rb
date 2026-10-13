class Watasu < Formula
  desc "Command-line interface for Watasu"
  homepage "https://github.com/watasuio/watasu-cli"
  version "0.1.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.16/watasu_0.1.16_darwin_arm64.tar.gz"
      sha256 "dd6edfe86592d60c84341267505f3b41af5ab83fd28b0ec93539c3fb7483ce74"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.16/watasu_0.1.16_darwin_amd64.tar.gz"
      sha256 "4475aabf895520f888768fbe9f2740433f63c2f3ed6432b48e21b567fc365292"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.16/watasu_0.1.16_linux_arm64.tar.gz"
      sha256 "c7a9be80efc3cd97189cb5366349335f45206cf53979428aeb2e13ff974f4d9f"
    else
      url "https://github.com/watasuio/watasu-cli/releases/download/v0.1.16/watasu_0.1.16_linux_amd64.tar.gz"
      sha256 "307e1951c9bbe7897a404f42472fa3d298a1c273ae2b88e16d77b8933c36e263"
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
