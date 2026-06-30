class Ccw < Formula
  desc "Manage git worktrees with persistent Claude Code sessions"
  homepage "https://github.com/bibaswan-bhawal/ccw"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bibaswan-bhawal/ccw/releases/download/v#{version}/ccw-macos-arm64"
      sha256 "aa62911d3412d01cdfa3dc2d74f57355eb37ad1e607368fc68ed4b67172c3daa"
    end
    on_intel do
      url "https://github.com/bibaswan-bhawal/ccw/releases/download/v#{version}/ccw-macos-x64"
      sha256 "dcac3ab2f8295cd44bec5c5316b59ff6549b019efa6bd9477c65924ad2ee6e38"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bibaswan-bhawal/ccw/releases/download/v#{version}/ccw-linux-x64"
      sha256 "2a9ad9639a7c702b30fc17863bcedd557a82a0423966c17cb66858891c7e5566"
    end
  end

  def install
    bin.install Dir["ccw-*"].first => "ccw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccw --version")
  end
end
