# Rendered by the marquee release workflow (.github/scripts/render_formula.py).
class Marquee < Formula
  desc "Markdown toolkit for the terminal: lint, format, query, transform and render"
  homepage "https://github.com/mtrense/marquee"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mtrense/marquee/releases/download/v0.2.0/mrq-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "ae9d2e8fc95da53004900319a892ae09396d709ca0de0051db4d601c2facb7c6"
    end

    on_intel do
      url "https://github.com/mtrense/marquee/releases/download/v0.2.0/mrq-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "22e4dec9435fe207f955f052f941cab9246d47fffb44f274a1ccab524f0dc91e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mtrense/marquee/releases/download/v0.2.0/mrq-v0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6fb9438f6b2f926810ce1cf4e6a18ad8f2b8eda5a1dc49c5ab648f775f39b18c"
    end

    on_intel do
      url "https://github.com/mtrense/marquee/releases/download/v0.2.0/mrq-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6c8c6b09f1629718887f4f1ba3f8faf03fe01a1c53f78b9f526e1fc0b09304a6"
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
