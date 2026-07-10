class Memora < Formula
  desc "Catch your AI citing sources that don't say what it claims"
  homepage "https://radotsvetkov.github.io/memora"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/radotsvetkov/memora/releases/download/v0.2.1/memora-cli-aarch64-apple-darwin.tar.xz"
      sha256 "9f8ca045ec3c2796816d3b9f929166211b55849ff0a202592857fa632b249ed2"
    end
    on_intel do
      url "https://github.com/radotsvetkov/memora/releases/download/v0.2.1/memora-cli-x86_64-apple-darwin.tar.xz"
      sha256 "8c6e9cee2a07063e1bc58b4345d8d71172794e376c84473ed7f98724fe32970d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/radotsvetkov/memora/releases/download/v0.2.1/memora-cli-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "e0e88f882656fc6df154f02751c979567900aa1e846df96352c50097e25814b3"
    end
    on_intel do
      url "https://github.com/radotsvetkov/memora/releases/download/v0.2.1/memora-cli-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "d507f31f724eb811324f16ff0d9b3359c76a82d481b2fabdc349f059c6fc8fda"
    end
  end

  def install
    bin.install "memora", "memora-mcp"
  end

  test do
    system "#{bin}/memora", "--help"
  end
end
