class Ccw < Formula
  desc "Manage git worktrees with persistent Claude Code sessions"
  homepage "https://github.com/bibaswan-bhawal/ccw"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bibaswan-bhawal/ccw/releases/download/v#{version}/ccw-macos-arm64"
      sha256 "4161643e6cdda11b90163ded30b33e25706c363c54fc045ee9539ceba958c4dd"
    end
    on_intel do
      url "https://github.com/bibaswan-bhawal/ccw/releases/download/v#{version}/ccw-macos-x64"
      sha256 "dcbe494e3e15446a72ffe058d30378a0f1d2fe942e9e3e60877e52f14042c42f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bibaswan-bhawal/ccw/releases/download/v#{version}/ccw-linux-x64"
      sha256 "35cd60b930495f577cadf0ce10e466bfa38de8212f1df361b49aa74ef7927b8a"
    end
  end

  def install
    bin.install Dir["ccw-*"].first => "ccw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccw --version")
  end
end
