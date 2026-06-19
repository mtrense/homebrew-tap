# Formula rendered by the mx_status release workflow — do not edit by hand.
class MxStatus < Formula
  desc "mx-status — a fast, configurable shell-prompt status line"
  homepage "https://github.com/mtrense/mx_status"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mtrense/mx_status/releases/download/v0.1.0/mx_status-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 ""
    end

    on_intel do
      url "https://github.com/mtrense/mx_status/releases/download/v0.1.0/mx_status-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mtrense/mx_status/releases/download/v0.1.0/mx_status-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 ""
    end

    on_intel do
      url "https://github.com/mtrense/mx_status/releases/download/v0.1.0/mx_status-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "mx_status"
  end

  test do
    system "#{bin}/mx_status", "--help"
  end
end
