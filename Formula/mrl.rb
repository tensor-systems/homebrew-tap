# typed: false
# frozen_string_literal: true

class Mrl < Formula
  desc "ModelRelay CLI for running and testing AI agents"
  homepage "https://modelrelay.ai"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.modelrelay.ai/mrl/#{version}/mrl-#{version}-darwin-arm64.tar.gz"
      sha256 "7c91ea14f24805b97d01a8fa59c35e74160e47d3a52bc0b8f41fd04588b0b397"
    end
    on_intel do
      url "https://releases.modelrelay.ai/mrl/#{version}/mrl-#{version}-darwin-amd64.tar.gz"
      sha256 "58edc7e45418c511fb5cd01adf6ecb581351a1b530b5427b3d0a3169c91d0356"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.modelrelay.ai/mrl/#{version}/mrl-#{version}-linux-arm64.tar.gz"
      sha256 "27d33a38f73d5b1cd8f7eacd36fcbaefa6e89bdccb6153e5c2e01d7aa6445b4d"
    end
    on_intel do
      url "https://releases.modelrelay.ai/mrl/#{version}/mrl-#{version}-linux-amd64.tar.gz"
      sha256 "cf90a173e05a98647de9104aac5dc51be2cbb3882d3dbfe079678db8571ddca1"
    end
  end

  def install
    bin.install "mrl"
  end

  test do
    assert_match "mrl #{version}", shell_output("#{bin}/mrl --version")
  end
end
