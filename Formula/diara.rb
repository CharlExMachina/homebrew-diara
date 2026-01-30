# Homebrew Formula for diara
#
# This formula downloads pre-built standalone binaries from GitHub releases.
# No runtime dependencies required - the Bun runtime is bundled in the executable.

class Diara < Formula
  desc "Banish your abandoned GitHub repositories - Extra damage to all undead repos"
  homepage "https://github.com/CharlExMachina/diara"
  version "1.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CharlExMachina/diara/releases/download/v1.1.3/diara-macos-arm64.tar.gz"
      sha256 "1f0d5be93e304ac22288ddfa3067bca00301bbdb620424623910c6e07351ba9c"

      def install
        bin.install "diara-macos-arm64" => "diara"
      end
    end
    on_intel do
      url "https://github.com/CharlExMachina/diara/releases/download/v1.1.3/diara-macos-x64.tar.gz"
      sha256 "38ec41dbf82c7673f61ae73019f4363ab654dd67c024297883973444f5d17fb3"

      def install
        bin.install "diara-macos-x64" => "diara"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CharlExMachina/diara/releases/download/v1.1.3/diara-linux-arm64.tar.gz"
      sha256 "65294fe558c79b842420c8ed3c572e11a1876c1e0866432d7017eb6e13ae404d"

      def install
        bin.install "diara-linux-arm64" => "diara"
      end
    end
    on_intel do
      url "https://github.com/CharlExMachina/diara/releases/download/v1.1.3/diara-linux-x64.tar.gz"
      sha256 "c43313c47c8e76e3f4a72b6be36f06591c8a4f83e5b320cba69a0c8aa76165ae"

      def install
        bin.install "diara-linux-x64" => "diara"
      end
    end
  end

  test do
    assert_match "DIARA", shell_output("#{bin}/diara 2>&1", 1)
  end
end
