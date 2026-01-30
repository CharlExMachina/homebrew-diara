# Homebrew Formula for diara
#
# This formula downloads pre-built standalone binaries from GitHub releases.
# No runtime dependencies required - the Bun runtime is bundled in the executable.

class Diara < Formula
  desc "Banish your abandoned GitHub repositories - Extra damage to all undead repos"
  homepage "https://github.com/CharlExMachina/diara"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CharlExMachina/diara/releases/download/v1.2.0/diara-macos-arm64.tar.gz"
      sha256 "5e0a9fa3605f2333ab83a40d3ccaae9d81667ea62e1818a001e9b0d63ca643de"

      def install
        bin.install "diara-macos-arm64" => "diara"
      end
    end
    on_intel do
      url "https://github.com/CharlExMachina/diara/releases/download/v1.2.0/diara-macos-x64.tar.gz"
      sha256 "3fc686feb527f85ffa875041db9df8fa989c36add5563deda6a7140bc216ab32"

      def install
        bin.install "diara-macos-x64" => "diara"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/CharlExMachina/diara/releases/download/v1.2.0/diara-linux-arm64.tar.gz"
      sha256 "d346c4e8aeffd38e6aaf65fd35597635b3c535c579fde72fd198ffaf54e76456"

      def install
        bin.install "diara-linux-arm64" => "diara"
      end
    end
    on_intel do
      url "https://github.com/CharlExMachina/diara/releases/download/v1.2.0/diara-linux-x64.tar.gz"
      sha256 "607fe4df8184f2e98d280a570c8ef6758ea5121a3f07a5d901cdcaacfe8926ae"

      def install
        bin.install "diara-linux-x64" => "diara"
      end
    end
  end

  test do
    assert_match "DIARA", shell_output("#{bin}/diara 2>&1", 1)
  end
end
