class Tuigram < Formula
  desc "tuigram: A TUI sequence diagram editor"
  homepage "https://github.com/preiter93/tuigram"
  version "v0.1.1"
  license "MIT"
  head "https://github.com/preiter93/tuigram.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/tuigram/releases/download/v0.1.0/tuigram-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "57a897d7b3efdcfaeb77876e85a1ee98b74c44123d75fc5df88a9a74819e5d14"
    else
      url "https://github.com/preiter93/tuigram/releases/download/v0.1.0/tuigram-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "6fb860db524d2930ca3d3285546c98ab237c1928015c07fa9c089747011c988a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/tuigram/releases/download/v0.1.0/tuigram-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6a560f3b42cc3d5b6ab56d882ccfdaba00f727868fd7a8a76ab9a8de224ad562"
    else
      url "https://github.com/preiter93/tuigram/releases/download/v0.1.0/tuigram-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d2fdb85e261257127f6216893ffa0100bb2ce16a37042b5120869d34ec2601a6"
    end
  end

  def install
    bin.install "tuigram"
  end

  test do
    system "#{bin}/tuigram", "--version"
  end
end
