class CastPredict < Formula
  desc "Telemetry-driven dispatch prediction over cast.db"
  homepage "https://github.com/ek33450505/cast-predict"
  url "https://github.com/ek33450505/cast-predict/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6e766bd9b6254157bcff7670895780983d723dd2180d05652787786dad2b4774"
  license "MIT"

  def install
    prefix.install "install.sh"
    prefix.install "uninstall.sh"
    prefix.install "VERSION"
    prefix.install "README.md"
    prefix.install "LICENSE"
    (prefix/"scripts").install Dir["scripts/*"]
    (prefix/"bin").install Dir["bin/*"]

    # Symlink the launcher onto PATH. It resolves the engine via ../scripts (symlink-aware).
    bin.install_symlink prefix/"bin/cast-predict"
  end

  def caveats
    <<~EOS
      cast-predict is now on your PATH.

      Try it:
        cast-predict "add a BATS test for the installer"
        cast-predict "<task>" --json

      cast-predict is read-only — cast.db is opened mode=ro; it never writes.

      See: https://github.com/ek33450505/cast-predict
    EOS
  end

  test do
    assert_predicate prefix/"bin/cast-predict", :exist?
    assert_match "cast-predict", shell_output("#{bin}/cast-predict version 2>&1")
  end
end
