# Rendered by the marquee release workflow (.github/scripts/render_formula.py).
class Mrq < Formula
  desc "Markdown toolkit for the terminal: lint, format, query, transform and render"
  homepage "https://github.com/mtrense/marquee"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mtrense/marquee/releases/download/v0.1.0/mrq-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "ad23f058af2f6176b92096b4d520a0b12553e194b6d7401edb7bb4134385277f"
    end

    on_intel do
      url "https://github.com/mtrense/marquee/releases/download/v0.1.0/mrq-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "58eee9c85f847aba89122db79219c8c27246a4dbaf689f2f417317daf9b1e41c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mtrense/marquee/releases/download/v0.1.0/mrq-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "98b377ec8307bce51d50bfa8cf4f30b890f0b6b500155e77deb9f8ab41bf8cde"
    end

    on_intel do
      url "https://github.com/mtrense/marquee/releases/download/v0.1.0/mrq-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a0c00ee562b0dac8519b11773f63990eb3c461614c440617c3435f2a560a0745"
    end
  end

  def install
    bin.install "mrq"
    man1.install Dir["man/*.1"]
    bash_completion.install "completions/mrq.bash"
    zsh_completion.install "completions/_mrq"
    fish_completion.install "completions/mrq.fish"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mrq --version")
  end
end
