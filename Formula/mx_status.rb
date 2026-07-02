# Formula rendered by the mx_status release workflow — do not edit by hand.
class MxStatus < Formula
  desc "mx-status — a fast, configurable shell-prompt status line"
  homepage "https://github.com/mtrense/mx_status"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mtrense/mx_status/releases/download/v0.4.0/mx_status-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "88196710da2226494085afcd071c5c96ecc49f954cb89d72b7d2390ec42442cc"
    end

    on_intel do
      url "https://github.com/mtrense/mx_status/releases/download/v0.4.0/mx_status-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "ed46de95367ac2cf75d6da1523752476b6ce8b226eef9c9c45d1b30ba7e88495"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mtrense/mx_status/releases/download/v0.4.0/mx_status-v0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "50e6a58ef303377b2a37bf09dc12b074bd9658e66dddc679a5962ebd03d2efab"
    end

    on_intel do
      url "https://github.com/mtrense/mx_status/releases/download/v0.4.0/mx_status-v0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "392301a944cf6d710381fc3a4ea7cf6468451a2f2d3b4ad1390b5f0c3511e893"
    end
  end

  def install
    bin.install "mx_status"
  end

  test do
    system "#{bin}/mx_status", "--help"
  end
end
