class Ccw < Formula
  desc "Manage git worktrees with persistent Claude Code sessions"
  homepage "https://github.com/bibaswan-bhawal/ccw"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bibaswan-bhawal/ccw/releases/download/v#{version}/ccw-macos-arm64"
      sha256 "0e9c2c3fcdf7fe5c89a555fcbb73d5edf544d9c10baae9285fe262e49de80d63"
    end
    on_intel do
      url "https://github.com/bibaswan-bhawal/ccw/releases/download/v#{version}/ccw-macos-x64"
      sha256 "d9985b343a6b05cac550124eaf2fc39f15037714f10c0c4615c0d030f87ab4e1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bibaswan-bhawal/ccw/releases/download/v#{version}/ccw-linux-x64"
      sha256 "558d1b8bb61e8044ffe49671cfdcdcb4a1d076f13b7ca8d5f57d8c91611fe4f2"
    end
  end

  def install
    bin.install Dir["ccw-*"].first => "ccw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccw --version")
  end
end
