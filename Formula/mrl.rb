# typed: false
# frozen_string_literal: true

# Homebrew formula for mrl - ModelRelay CLI
# This formula is auto-generated. Do not edit manually.
# To update: run scripts/update-homebrew-formula.sh after a release.

class Mrl < Formula
  desc "ModelRelay CLI for running and testing AI agents"
  homepage "https://modelrelay.ai"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/modelrelay/modelrelay/releases/download/mrl-v#{version}/mrl-#{version}-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_ARM64"

      def install
        bin.install "mrl-darwin-arm64" => "mrl"
      end
    end

    on_intel do
      url "https://github.com/modelrelay/modelrelay/releases/download/mrl-v#{version}/mrl-#{version}-darwin-amd64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_AMD64"

      def install
        bin.install "mrl-darwin-amd64" => "mrl"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/modelrelay/modelrelay/releases/download/mrl-v#{version}/mrl-#{version}-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_ARM64"

      def install
        bin.install "mrl-linux-arm64" => "mrl"
      end
    end

    on_intel do
      url "https://github.com/modelrelay/modelrelay/releases/download/mrl-v#{version}/mrl-#{version}-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_AMD64"

      def install
        bin.install "mrl-linux-amd64" => "mrl"
      end
    end
  end

  test do
    assert_match "ModelRelay CLI", shell_output("#{bin}/mrl --help")
  end
end
