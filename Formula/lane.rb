# Formula rendered by the lane release workflow — do not edit by hand.
class Lane < Formula
  desc "Deterministic work-item CLI for AI agents and scripts"
  homepage "https://github.com/mtrense/lane"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mtrense/lane/releases/download/v0.1.0/lane-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 ""
    end

    on_intel do
      url "https://github.com/mtrense/lane/releases/download/v0.1.0/lane-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mtrense/lane/releases/download/v0.1.0/lane-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 ""
    end

    on_intel do
      url "https://github.com/mtrense/lane/releases/download/v0.1.0/lane-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "lane"
  end

  test do
    system "#{bin}/lane", "--version"
  end
end
