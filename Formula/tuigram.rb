class Tuigram < Formula
  desc "tuigram: A TUI sequence diagram editor"
  homepage "https://github.com/preiter93/tuigram"
  version "v0.1.6"
  license "MIT"
  head "https://github.com/preiter93/tuigram.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/tuigram/releases/download/v0.1.6/tuigram-v0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "b543dd4bd2c4e4b2c2e3386e49ac3d0db39120ad832b5b1ebcf0e30f741de326"
    else
      url "https://github.com/preiter93/tuigram/releases/download/v0.1.6/tuigram-v0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "4c344174bc824f2be049bee1286e883c39fbc7d9686559cd86278b21dd2d144f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/preiter93/tuigram/releases/download/v0.1.6/tuigram-v0.1.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3574f5dec702af01d3441f8d4b71a3c1fac5a9de06c6e9ec458ce1a722d57911"
    else
      url "https://github.com/preiter93/tuigram/releases/download/v0.1.6/tuigram-v0.1.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f64132e0ede623a642e044ec2b8052b87f7a86ed4bf181d7e22d4193d7e2aed9"
    end
  end

  def install
    bin.install "tuigram"
  end

  test do
    system "#{bin}/tuigram", "--version"
  end
end
