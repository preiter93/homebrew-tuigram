class Tuigram < Formula
  desc "tuigram: A TUI sequence diagram editor"
  homepage "https://github.com/preiter93/tuigram"
  version "v0.1.4"
  license "MIT"
  head "https://github.com/preiter93/tuigram.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/tuigram/releases/download/v0.1.4/tuigram-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "3d0e8277b3a068918c85c5e8c6d087e2f63a82067fa144eabd7f8e7d6eaa0878"
    else
      url "https://github.com/preiter93/tuigram/releases/download/v0.1.4/tuigram-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "48ce196f66f13808a3bd23587699cb17f0a7e17e3fb86c520b399d2e85d13eb0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/tuigram/releases/download/v0.1.4/tuigram-v0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "59d726f2f69923c45e4dc94d6af6afeb9d9d8a1c137ed58d600ade089a94e35e"
    else
      url "https://github.com/preiter93/tuigram/releases/download/v0.1.4/tuigram-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c16e16d2290ae11e03158bdb21d221b1728f8d58f71936a6f0c1fa62b20aaae0"
    end
  end

  def install
    bin.install "tuigram"
  end

  test do
    system "#{bin}/tuigram", "--version"
  end
end
