class Tuigram < Formula
  desc "tuigram: Project Aware Command Storage"
  homepage "https://github.com/preiter93/tuigram"
  version "v0.1.1"
  license "MIT"
  head "https://github.com/preiter93/tuigram.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/tuigram/releases/download/v0.1.1/tuigram-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "44be24f54c14a4f1d403bd79d70b900b97b37c89d99ba5cff643bde0fcf47fa5"
    else
      url "https://github.com/preiter93/tuigram/releases/download/v0.1.1/tuigram-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "03cc36a8d61de0eb0fc77983454bcd7163e9706ae52e7572b18ddb240e459054"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/tuigram/releases/download/v0.1.1/tuigram-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9805e8526c2ea571e3e0971f2929f59f11579a07cc96577d230df2d2c9ff5b0f"
    else
      url "https://github.com/preiter93/tuigram/releases/download/v0.1.1/tuigram-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0ff99bb7f66abb5a149c74faa0e94e96cad42e9ecd3854c9184252b051228d25"
    end
  end

  def install
    bin.install "tuigram"
  end

  test do
    system "#{bin}/tuigram", "--version"
  end
end
