class Tuigram < Formula
  desc "tuigram: A TUI sequence diagram editor"
  homepage "https://github.com/preiter93/tuigram"
  version "v0.1.5"
  license "MIT"
  head "https://github.com/preiter93/tuigram.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/tuigram/releases/download/v0.1.5/tuigram-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "11bb79190e6254bceabe81bf4226736960473fd78d9b8073d97b9db639335119"
    else
      url "https://github.com/preiter93/tuigram/releases/download/v0.1.5/tuigram-v0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "bc08db0deda1ab8d94dd09b6d627c7086a8198659a0c63bb3b2b2d8652e53095"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/tuigram/releases/download/v0.1.5/tuigram-v0.1.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b213ca1f806b3ac649294f727e9fe8b76f9b2bf48a6da7ee902c4855548a088f"
    else
      url "https://github.com/preiter93/tuigram/releases/download/v0.1.5/tuigram-v0.1.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9cd01cdf927ff90d8f6941bb30467b869892dfa35682e06421c8fd5e32ba5cd0"
    end
  end

  def install
    bin.install "tuigram"
  end

  test do
    system "#{bin}/tuigram", "--version"
  end
end
