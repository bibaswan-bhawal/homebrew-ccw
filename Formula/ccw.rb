class Ccw < Formula
  desc "Manage git worktrees with persistent Claude Code sessions"
  homepage "https://github.com/bibaswan-bhawal/ccw"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bibaswan-bhawal/ccw/releases/download/v#{version}/ccw-macos-arm64"
      sha256 "24f9fade0160e9e4ba439b7527225d4a7cc114878ff8e2193cde78b1a7c12dea"
    end
    on_intel do
      url "https://github.com/bibaswan-bhawal/ccw/releases/download/v#{version}/ccw-macos-x64"
      sha256 "e3c20e30631434fc3b01e61d8311d1a31b62ace4869d77a83eafd1801dabf97a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bibaswan-bhawal/ccw/releases/download/v#{version}/ccw-linux-x64"
      sha256 "77219039cb81b9a3e2c23312ff7f8ecc3d569e6e7943f157fe67b2c2d90e8c4b"
    end
  end

  def install
    bin.install Dir["ccw-*"].first => "ccw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccw --version")
  end
end
