class Memora < Formula
  desc "Catch your AI citing sources that don't say what it claims"
  homepage "https://radotsvetkov.github.io/memora"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/radotsvetkov/memora/releases/download/v0.1.29/memora-cli-aarch64-apple-darwin.tar.xz"
      sha256 "8e4bd44131a97586832484223959258665b7fe537765f5933f1f9018e9e13a21"
    end
    on_intel do
      url "https://github.com/radotsvetkov/memora/releases/download/v0.1.29/memora-cli-x86_64-apple-darwin.tar.xz"
      sha256 "80fc565a26ea2849249a75ef98fe56fad0da9176b7dc932cd32a4cea8e20b999"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/radotsvetkov/memora/releases/download/v0.1.29/memora-cli-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "bc2be7f8efa71309e8e13592b42c11b2845b4fca6946b53cd719a3aaa8790de7"
    end
    on_intel do
      url "https://github.com/radotsvetkov/memora/releases/download/v0.1.29/memora-cli-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "df195df7a146db231ef019369c08325f6e5a6a9e76812a5dcb81ffa246ada463"
    end
  end

  def install
    bin.install "memora", "memora-mcp"
  end

  test do
    system "#{bin}/memora", "--help"
  end
end
