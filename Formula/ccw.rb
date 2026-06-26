class Ccw < Formula
  desc "Manage git worktrees with persistent Claude Code sessions"
  homepage "https://github.com/bibaswan-bhawal/ccw"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bibaswan-bhawal/ccw/releases/download/v#{version}/ccw-macos-arm64"
      sha256 "7d368fc4143def53729c556f43db60b56e884ec7065c9107e19ca5a398aaa748"
    end
    on_intel do
      url "https://github.com/bibaswan-bhawal/ccw/releases/download/v#{version}/ccw-macos-x64"
      sha256 "53d15978e89c4a20e90188e031c521d310ea0ab1ef8977b8d77315c2b3948694"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bibaswan-bhawal/ccw/releases/download/v#{version}/ccw-linux-x64"
      sha256 "84e85ecdad9ff8250ed872a719d54faad965b5a5f243aaf34d6b2062b49b1be4"
    end
  end

  def install
    bin.install Dir["ccw-*"].first => "ccw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccw --version")
  end
end
