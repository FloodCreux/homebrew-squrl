class Squrl < Formula
  desc "Terminal-based HTTP and WebSocket client"
  homepage "https://github.com/FloodCreux/squrl"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FloodCreux/squrl/releases/download/v#{version}/squrl-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    elsif Hardware::CPU.intel?
      url "https://github.com/FloodCreux/squrl/releases/download/v#{version}/squrl-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/FloodCreux/squrl/releases/download/v#{version}/squrl-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    elsif Hardware::CPU.intel?
      url "https://github.com/FloodCreux/squrl/releases/download/v#{version}/squrl-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "squrl"
  end

  test do
    assert_match "squrl #{version}", shell_output("#{bin}/squrl --version")
  end
end
