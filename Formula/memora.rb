class Memora < Formula
  desc "Catch your AI citing sources that don't say what it claims"
  homepage "https://radotsvetkov.github.io/memora"
  version "0.1.28"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/radotsvetkov/memora/releases/download/v0.1.28/memora-cli-aarch64-apple-darwin.tar.xz"
      sha256 "7f04aa088f4876f484bd8066d08b0da756b9c801f03871417b0221064a6a8d3f"
    end
    on_intel do
      url "https://github.com/radotsvetkov/memora/releases/download/v0.1.28/memora-cli-x86_64-apple-darwin.tar.xz"
      sha256 "41006d93e6303844e24ce7c5343e63bf6f92c840099fbab93c9a4674000b88bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/radotsvetkov/memora/releases/download/v0.1.28/memora-cli-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "567c647a50304a01c88bbb37d5bad98a806d865ad9662b83a8b5ddd3fb07d47f"
    end
    on_intel do
      url "https://github.com/radotsvetkov/memora/releases/download/v0.1.28/memora-cli-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "cfe6fc942dcaa27f6f3ef5912ec3254e0f988a799833b881ef510dd6b21f7bd1"
    end
  end

  def install
    bin.install "memora", "memora-mcp"
  end

  test do
    system "#{bin}/memora", "--help"
  end
end
