class Tuigram < Formula
  desc "tuigram: A TUI sequence diagram editor."
  homepage "https://github.com/preiter93/tuigram"
  version "v0.1.3"
  license "MIT"
  head "https://github.com/preiter93/tuigram.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/tuigram/releases/download/v0.1.3/tuigram-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "a719222c170094c4e5fd0b7a423e6b55571ea1d90b32d58232a9cd71f1635709"
    else
      url "https://github.com/preiter93/tuigram/releases/download/v0.1.3/tuigram-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "beeaca81d9e845d47c4f2e03560e3b57db1d847aad6f2bbf24ec218df10598f3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/tuigram/releases/download/v0.1.3/tuigram-v0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d9d74eb0a11a6feb8a6ab02d38f30c82293ea51a0659acaa4ac65ab264cca6d8"
    else
      url "https://github.com/preiter93/tuigram/releases/download/v0.1.3/tuigram-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8353cf4f8da7481b785f49d18b00c847b77d50bd50b24cfc68edcf52596324d2"
    end
  end

  def install
    bin.install "tuigram"
  end

  test do
    system "#{bin}/tuigram", "--version"
  end
end
