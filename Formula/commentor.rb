class Commentor < Formula
  desc "Azure DevOps pull request comment triage utility"
  homepage "https://github.com/JohnnyDevCraft/commentor"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/JohnnyDevCraft/commentor/releases/download/v0.1.0/commentor-0.1.0-osx-arm64.tar.gz"
      sha256 "59e3228c6c3369c437d719362f2756bd4165089b5cbe50b7b43a68ab663bb687"
    end

    on_intel do
      url "https://github.com/JohnnyDevCraft/commentor/releases/download/v0.1.0/commentor-0.1.0-osx-x64.tar.gz"
      sha256 "ca823b2cefeec2063080568356a9e1cad24ba970cdaeb2d49cbd84afdb2d6f06"
    end
  end

  def install
    bin.install "commentor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/commentor --version")
  end
end
