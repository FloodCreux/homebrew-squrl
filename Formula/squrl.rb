class Squrl < Formula
  desc "Terminal-based HTTP and WebSocket client"
  homepage "https://github.com/FloodCreux/squrl"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FloodCreux/squrl/releases/download/v0.1.2/squrl-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "197c963a34c66c34acb2063c47e48e399ea667d32391afbc8d826990ed0e6b07"
    elsif Hardware::CPU.intel?
      url "https://github.com/FloodCreux/squrl/releases/download/v0.1.2/squrl-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "a71868c864ab0d9cee0120da2ff87e1e99e2ec2e053d8a60132639d6f466de77"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/FloodCreux/squrl/releases/download/v0.1.2/squrl-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0c60a49c8d9c9b9b958c0f06f1608d9e664062702874375a1511b19f738550ac"
    elsif Hardware::CPU.intel?
      url "https://github.com/FloodCreux/squrl/releases/download/v0.1.2/squrl-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fe724847a6dd4bfb5ed2857fad7c967e0e4615c3e51e87a0de56ede93ba85099"
    end
  end

  def install
    bin.install "squrl"
  end

  test do
    assert_match "squrl #{version}", shell_output("#{bin}/squrl --version")
  end
end
