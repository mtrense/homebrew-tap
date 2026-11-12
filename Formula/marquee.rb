# Rendered by the marquee release workflow (.github/scripts/render_formula.py).
class Marquee < Formula
  desc "Markdown toolkit for the terminal: lint, format, query, transform and render"
  homepage "https://github.com/mtrense/marquee"
  version "0.2.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mtrense/marquee/releases/download/v0.2.1/mrq-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "23567abcc5df1c554a810d9b4160622d1e2b240298d7378b21e1481005cd83a5"
    end

    on_intel do
      url "https://github.com/mtrense/marquee/releases/download/v0.2.1/mrq-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "3a290285ae82a4a09ebe884c3235ace7c00280dc35bae1978c3f5571a9cc2e8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mtrense/marquee/releases/download/v0.2.1/mrq-v0.2.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cd90d83c13ad2e660d84e2bec1cc81d67aff5349b9569ed780249b80ee39a17b"
    end

    on_intel do
      url "https://github.com/mtrense/marquee/releases/download/v0.2.1/mrq-v0.2.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ddbaa455d40eac173e8048d7942b0bb05556bbbb5ac4ab426f4f94191cef6904"
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
