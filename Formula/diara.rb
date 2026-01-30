# Homebrew Formula for diara
#
# This formula downloads pre-built standalone binaries from GitHub releases.
# No runtime dependencies required - the Bun runtime is bundled in the executable.

class Diara < Formula
  desc "Banish your abandoned GitHub repositories - Extra damage to all undead repos"
  homepage "https://github.com/CharlExMachina/diara"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CharlExMachina/diara/releases/download/v1.1.0/diara-macos-arm64.tar.gz"
      sha256 "66e2bc0ac3872e27b954d900aaa37c2617a73b82a71a73deda332d7dcb1e91e1"

      def install
        bin.install "diara-macos-arm64" => "diara"
      end
    end
    on_intel do
      url "https://github.com/CharlExMachina/diara/releases/download/v1.1.0/diara-macos-x64.tar.gz"
      sha256 "834c723a50765f68c08c93020faefa4a249e5218c74c65c0a1b632926ceb8ed5"

      def install
        bin.install "diara-macos-x64" => "diara"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CharlExMachina/diara/releases/download/v1.1.0/diara-linux-arm64.tar.gz"
      sha256 "f7446910721ca4d56a4ab6953a0b97d85922c2bc6ffb666f12cfca022f76e664"

      def install
        bin.install "diara-linux-arm64" => "diara"
      end
    end
    on_intel do
      url "https://github.com/CharlExMachina/diara/releases/download/v1.1.0/diara-linux-x64.tar.gz"
      sha256 "b65c31d307bdc250b7bb1747b26ded9eb0d604c94d14ce7ecf5dd2683d9509be"

      def install
        bin.install "diara-linux-x64" => "diara"
      end
    end
  end

  test do
    assert_match "DIARA", shell_output("#{bin}/diara 2>&1", 1)
  end
end
