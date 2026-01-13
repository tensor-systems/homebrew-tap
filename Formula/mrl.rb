# typed: false
# frozen_string_literal: true

class Mrl < Formula
  desc "ModelRelay CLI for running and testing AI agents"
  homepage "https://modelrelay.ai"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.modelrelay.ai/mrl/#{version}/mrl-#{version}-darwin-arm64.tar.gz"
      sha256 "5f2fddeb8df76e2695d9ea6c32e4c4d3d3145b06b359d792597f9e3ad2feb282"
    end
    on_intel do
      url "https://releases.modelrelay.ai/mrl/#{version}/mrl-#{version}-darwin-amd64.tar.gz"
      sha256 "71a29bd61296a8d5098d57c043d8be301408fdde1c4f171cd447b93a7e34f88f"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.modelrelay.ai/mrl/#{version}/mrl-#{version}-linux-arm64.tar.gz"
      sha256 "dbb470dad58477c4f1547f11666e39ef07ec84a165b391a2cdccbe3e9763e456"
    end
    on_intel do
      url "https://releases.modelrelay.ai/mrl/#{version}/mrl-#{version}-linux-amd64.tar.gz"
      sha256 "71b1fcf3d680354d9f9dc37dcac1785e4ed5ba63468199dd66ca9c6eb6486aa9"
    end
  end

  def install
    bin.install "mrl"
  end

  test do
    assert_match "mrl #{version}", shell_output("#{bin}/mrl --version")
  end
end
