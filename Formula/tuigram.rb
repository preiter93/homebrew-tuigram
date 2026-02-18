class Tuigram < Formula
  desc "tuigram: Project Aware Command Storage"
  homepage "https://github.com/preiter93/tuigram"
  version "v0.1.2"
  license "MIT"
  head "https://github.com/preiter93/tuigram.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/tuigram/releases/download/v0.1.2/tuigram-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "288245b207d4a21a77fe6e687a5f9234f6c84565af184ed5d2b6e554751d8cce"
    else
      url "https://github.com/preiter93/tuigram/releases/download/v0.1.2/tuigram-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "a16ba7a684b23a6ee87a4324d239147811ee5fa6ced60ecbb88da7cbec105d1c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/tuigram/releases/download/v0.1.2/tuigram-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "441d3baf45fd08e958ad733d127984b1c67208ccfcfbe1bfdd05243428a6a4dd"
    else
      url "https://github.com/preiter93/tuigram/releases/download/v0.1.2/tuigram-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e662719aa9cfe991cc0f1e87e9012e958a724da42283b65993259d2531f2bb7f"
    end
  end

  def install
    bin.install "tuigram"
  end

  test do
    system "#{bin}/tuigram", "--version"
  end
end
