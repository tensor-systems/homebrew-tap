# typed: false
# frozen_string_literal: true

class Mrl < Formula
  desc "ModelRelay CLI for running and testing AI agents"
  homepage "https://modelrelay.ai"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.modelrelay.ai/mrl/#{version}/mrl-#{version}-darwin-arm64.tar.gz"
      sha256 "ffc75dfb8a54cea5cd26cb0384d18c0dd722bdafd27276f2bae908c60fed9201"
    end
    on_intel do
      url "https://releases.modelrelay.ai/mrl/#{version}/mrl-#{version}-darwin-amd64.tar.gz"
      sha256 "8f52e90ca312583f9f843d74982a5ce8b654738fa106e6639ca8e2d00801edd6"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.modelrelay.ai/mrl/#{version}/mrl-#{version}-linux-arm64.tar.gz"
      sha256 "0e48b45396f3f27900062546332c368a2e499f3b36359951904f4fdba263c617"
    end
    on_intel do
      url "https://releases.modelrelay.ai/mrl/#{version}/mrl-#{version}-linux-amd64.tar.gz"
      sha256 "e64398b183dfdfddc0a1e8b5f322b40d052e911d002de6213cf1b2162b50d624"
    end
  end

  def install
    bin.install "mrl"
  end

  test do
    assert_match "mrl #{version}", shell_output("#{bin}/mrl --version")
  end
end
