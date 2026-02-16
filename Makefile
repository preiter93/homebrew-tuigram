version = v0.1.0

download:
	curl -LO https://github.com/preiter93/tuigram/releases/download/$(version)/tuigram-$(version)-aarch64-apple-darwin.tar.gz
	curl -LO https://github.com/preiter93/tuigram/releases/download/$(version)/tuigram-$(version)-x86_64-apple-darwin.tar.gz
	curl -LO https://github.com/preiter93/tuigram/releases/download/$(version)/tuigram-$(version)-aarch64-unknown-linux-gnu.tar.gz
	curl -LO https://github.com/preiter93/tuigram/releases/download/$(version)/tuigram-$(version)-x86_64-unknown-linux-gnu.tar.gz
	mv tuigram-* bin/.

shasum:
	shasum -a 256 bin/tuigram-$(version)-aarch64-apple-darwin.tar.gz
	shasum -a 256 bin/tuigram-$(version)-x86_64-apple-darwin.tar.gz
	shasum -a 256 bin/tuigram-$(version)-aarch64-unknown-linux-gnu.tar.gz
	shasum -a 256 bin/tuigram-$(version)-x86_64-unknown-linux-gnu.tar.gz
