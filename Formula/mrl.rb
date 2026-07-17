# typed: false
# frozen_string_literal: true

class Mrl < Formula
  desc "ModelRelay CLI for running and testing AI agents"
  homepage "https://modelrelay.ai"
  version "2.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.modelrelay.ai/mrl/#{version}/mrl-#{version}-darwin-arm64.tar.gz"
      sha256 "20b0b7b9da2e08475badbfcc813d7ae57d36471b62a10a7b34a9baa707c98893"
    end
    on_intel do
      url "https://releases.modelrelay.ai/mrl/#{version}/mrl-#{version}-darwin-amd64.tar.gz"
      sha256 "d010bf992f7742c071511bc4d46c2ff66444f0958b11d2e4327cbb004539d463"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.modelrelay.ai/mrl/#{version}/mrl-#{version}-linux-arm64.tar.gz"
      sha256 "34cc84e170ff776f812b770feea689bf0cfb7eb92f8c1d3d9a609fb96ab6c722"
    end
    on_intel do
      url "https://releases.modelrelay.ai/mrl/#{version}/mrl-#{version}-linux-amd64.tar.gz"
      sha256 "aa2131d3450d0b9b8093f03fce046a7715218441f837c5443e761ace208f1060"
    end
  end

  def install
    bin.install "mrl"
  end

  test do
    assert_match "mrl #{version}", shell_output("#{bin}/mrl --version")
  end
end
