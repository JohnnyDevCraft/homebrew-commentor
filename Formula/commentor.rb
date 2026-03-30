class Commentor < Formula
  desc "Azure DevOps pull request comment triage utility"
  homepage "https://github.com/JohnnyDevCraft/commentor"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/JohnnyDevCraft/commentor/releases/download/v0.1.2/commentor-0.1.2-osx-arm64.tar.gz"
      sha256 "6b3f26bf2e474630effb9b63ce2de0770387a2ee9e8a2758fb2302ecf65a849c"
    end

    on_intel do
      url "https://github.com/JohnnyDevCraft/commentor/releases/download/v0.1.2/commentor-0.1.2-osx-x64.tar.gz"
      sha256 "fe5161e9dffb390aa454c69cb53989446fff6892c86df02994c84b0d1c92ca9e"
    end
  end

  def install
    bin.install "commentor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/commentor --version")
  end
end
