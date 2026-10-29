class Gymmaster < Formula
  desc "Gym Master in your terminal: chat with Gym Master AI on your workspace data, call the API, manage keys and webhooks"
  homepage "https://developers.gymmaster.vn/docs/cli"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.1/gymmaster-darwin-arm64.tar.gz"
      sha256 "93ab0553fe822e2180b024e4034756f659ab967baa2b66678eed5050baf961e1"
    end
    on_intel do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.1/gymmaster-darwin-x64.tar.gz"
      sha256 "bfca8316749aa46312a173ef429d3170eabaf17e78079bcb1a1f69729b6098d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.1/gymmaster-linux-arm64.tar.gz"
      sha256 "017d63e513d3791b6d7470de03b3ca594aed8a1cdc257651c6560f18f051a37e"
    end
    on_intel do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.1/gymmaster-linux-x64.tar.gz"
      sha256 "e8bd86d743e4f0a22f5789853fd62aa19094ebb56b3c6fc9eb9c0721c0d3b4c9"
    end
  end

  def install
    bin.install "gymmaster"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gymmaster --version")
  end
end
