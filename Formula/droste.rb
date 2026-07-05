# typed: false
# frozen_string_literal: true

# NOTE: draft until the first public PyPI release of droste.
# At publish time: set version, fill url from
#   https://pypi.org/pypi/droste/<version>/json  (sdist entry)
# and sha256 via: curl -sL <sdist-url> | shasum -a 256
class Droste < Formula
  include Language::Python::Virtualenv

  desc "Ask questions over files, folders, and SQLite with a recursive language model"
  homepage "https://github.com/tensor-systems/droste"
  url "https://files.pythonhosted.org/packages/source/d/droste/droste-0.6.0.tar.gz"
  sha256 "REPLACE_WITH_SDIST_SHA256_AT_PUBLISH"
  license "Apache-2.0"

  depends_on "python@3.13"

  # The engine is dependency-free (urllib-only), so there are no resource
  # blocks — the virtualenv contains exactly the droste wheel.
  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "droste", shell_out("#{bin}/droste --version")
    # No API key: a clean usage error (exit 2), not a crash.
    output = shell_out("#{bin}/droste 'q' 2>&1", 2)
    assert_match "droste: error:", output
  end
end
