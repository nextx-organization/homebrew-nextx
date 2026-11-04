class Nextx < Formula
  desc "Command-line client for NextX AI: chat, API, keys and webhooks"
  homepage "https://developers.nextx.vn/docs/cli"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.9/nextx-darwin-arm64.tar.gz"
      sha256 "503b6bfb1037e8e9c73e1ac07b51c40aecc21e4db6d3fd952c3a4fbbd207c1c8"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.9/nextx-darwin-x64.tar.gz"
      sha256 "cbd0772a691372753f03eaa02b517110e68e1359fbab70061f709eef029cfce9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.9/nextx-linux-arm64.tar.gz"
      sha256 "a631497d4899e334e9aee8bff97a75a8ec2d6c6ea39ba791deae9e82c2c13d4b"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.9/nextx-linux-x64.tar.gz"
      sha256 "bf6c9ae63dc47acd61e10bd2aafb07b8e3c72101dc27d4fd8c1df04744e8812a"
    end
  end

  def install
    bin.install "nextx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nextx --version")
  end
end
