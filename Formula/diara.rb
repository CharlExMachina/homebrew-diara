# Homebrew Formula for diara
#
# This formula downloads pre-built standalone binaries from GitHub releases.
# No runtime dependencies required - the Bun runtime is bundled in the executable.

class Diara < Formula
  desc "Banish your abandoned GitHub repositories - Extra damage to all undead repos"
  homepage "https://github.com/CharlExMachina/diara"
  version "1.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CharlExMachina/diara/releases/download/v1.1.2/diara-macos-arm64.tar.gz"
      sha256 "f19619bc8e4a5e9c4af2551d9b86374b7852ae9ea4b46e480092fcaa7d44b38c"

      def install
        bin.install "diara-macos-arm64" => "diara"
      end
    end
    on_intel do
      url "https://github.com/CharlExMachina/diara/releases/download/v1.1.2/diara-macos-x64.tar.gz"
      sha256 "ac7685e56ed0c0fd6ff77b45ce8a99a9ab1ad03d098dec4e61972526b6868a88"

      def install
        bin.install "diara-macos-x64" => "diara"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CharlExMachina/diara/releases/download/v1.1.2/diara-linux-arm64.tar.gz"
      sha256 "cdf095b6fc1bfc4ad846f0d798229e0a1d3c18d142287d8121336808be5ef275"

      def install
        bin.install "diara-linux-arm64" => "diara"
      end
    end
    on_intel do
      url "https://github.com/CharlExMachina/diara/releases/download/v1.1.2/diara-linux-x64.tar.gz"
      sha256 "16c409c61acbbd41cbfa8720616ff86d8c3704bf9abec0914e2d2f2d4fc59f3c"

      def install
        bin.install "diara-linux-x64" => "diara"
      end
    end
  end

  test do
    assert_match "DIARA", shell_output("#{bin}/diara 2>&1", 1)
  end
end
