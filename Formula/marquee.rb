# Rendered by the marquee release workflow (.github/scripts/render_formula.py).
class Marquee < Formula
  desc "Markdown toolkit for the terminal: lint, format, query, transform and render"
  homepage "https://github.com/mtrense/marquee"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/mtrense/marquee/releases/download/v0.3.0/mrq-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "c01153f72f14cfc574743fe55d1706a4badc52e490d4fd2a9b661e0c401b6eb2"
    end

    on_intel do
      url "https://github.com/mtrense/marquee/releases/download/v0.3.0/mrq-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "89cf55def147585fa4369d2248a05265e7c43ebfe38a360136d7ce644961b8af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mtrense/marquee/releases/download/v0.3.0/mrq-v0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "682af03ab2be24dcd1b00b572a7b3df044f0f704900d280f0f648f05826095fb"
    end

    on_intel do
      url "https://github.com/mtrense/marquee/releases/download/v0.3.0/mrq-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b46468520f1415d96920b8828da944452350c514c4f150492699076cdea27788"
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
