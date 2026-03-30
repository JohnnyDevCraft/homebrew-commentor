class Commentor < Formula
  desc "Azure DevOps pull request comment triage utility"
  homepage "https://github.com/JohnnyDevCraft/commentor"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/JohnnyDevCraft/commentor/releases/download/v0.1.1/commentor-0.1.1-osx-arm64.tar.gz"
      sha256 "ae61f645dd1eefaf0b7595e8a726e9a9bb2d68ad0cea1d3eca23127694bb8dbb"
    end

    on_intel do
      url "https://github.com/JohnnyDevCraft/commentor/releases/download/v0.1.1/commentor-0.1.1-osx-x64.tar.gz"
      sha256 "aceb2d8575d87b9041d9e3fddba695a5a7855e18c22c8d921fcd5150ec53dfca"
    end
  end

  def install
    bin.install "commentor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/commentor --version")
  end
end
