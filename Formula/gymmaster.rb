class Gymmaster < Formula
  desc "Command-line client for Gym Master AI: chat, API, keys and webhooks"
  homepage "https://developers.gymmaster.vn/docs/cli"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.11/gymmaster-darwin-arm64.tar.gz"
      sha256 "9fa33021b65345968cc19ac76575a2711f43ba4700c2551193adef789831e333"
    end
    on_intel do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.11/gymmaster-darwin-x64.tar.gz"
      sha256 "44097a6495e021965d9b56a4793ca8fb9eba809f67fcdedc3060c56ab1254eb4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.11/gymmaster-linux-arm64.tar.gz"
      sha256 "527bd071deebe20d68eaf04fae6faa4e62d87834ebe353ee38abbbd47bc898db"
    end
    on_intel do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.11/gymmaster-linux-x64.tar.gz"
      sha256 "9b41e2b73e705175adc0e6fdf9ec8ecb4575388739d35e0db2c673f19464600d"
    end
  end

  def install
    bin.install "gymmaster"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gymmaster --version")
  end
end
