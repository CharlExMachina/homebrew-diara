# Homebrew Formula for diara
#
# This formula downloads pre-built standalone binaries from GitHub releases.
# No runtime dependencies required - the Bun runtime is bundled in the executable.

class Diara < Formula
  desc "Banish your abandoned GitHub repositories - Extra damage to all undead repos"
  homepage "https://github.com/CharlExMachina/diara"
  version "1.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CharlExMachina/diara/releases/download/v1.1.1/diara-macos-arm64.tar.gz"
      sha256 "38b9f737a6d8a7f8b216c2c80e2ef4057d2ac0b94beb5594403324e6ee4fd338"

      def install
        bin.install "diara-macos-arm64" => "diara"
      end
    end
    on_intel do
      url "https://github.com/CharlExMachina/diara/releases/download/v1.1.1/diara-macos-x64.tar.gz"
      sha256 "cae0fab445be0272fb5adfc474c35e5442e98f4d31073565d8a922e99b5acfe1"

      def install
        bin.install "diara-macos-x64" => "diara"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CharlExMachina/diara/releases/download/v1.1.1/diara-linux-arm64.tar.gz"
      sha256 "a4dd131b00dbddc794cbf25f1414f56709d511c9345b8bf96b12e6d9794c950e"

      def install
        bin.install "diara-linux-arm64" => "diara"
      end
    end
    on_intel do
      url "https://github.com/CharlExMachina/diara/releases/download/v1.1.1/diara-linux-x64.tar.gz"
      sha256 "81b6930ea26f3509c4b7b14aea80ce448d11ee93b055af1456554149c65d81cf"

      def install
        bin.install "diara-linux-x64" => "diara"
      end
    end
  end

  test do
    assert_match "DIARA", shell_output("#{bin}/diara 2>&1", 1)
  end
end
