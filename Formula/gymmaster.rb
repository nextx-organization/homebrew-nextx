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
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.7/gymmaster-darwin-arm64.tar.gz"
      sha256 "3a9af2fa69daaab3d932c8a33eef91341028cefbd2fbc22179aaa08389f58d92"
    end
    on_intel do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.7/gymmaster-darwin-x64.tar.gz"
      sha256 "bdf80153771a78df8a91560ffd22fba802639436158d3e228fee06e4fc8adea9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.7/gymmaster-linux-arm64.tar.gz"
      sha256 "c41d94fda327d4fdde0a38052dcaed08be3e617ace3661b06761adc545158d48"
    end
    on_intel do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.7/gymmaster-linux-x64.tar.gz"
      sha256 "85bd58a40eaf79fd5983361ba7831a675e9a2bf4104210d7a21b7fd433b63f74"
    end
  end

  def install
    bin.install "gymmaster"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gymmaster --version")
  end
end
