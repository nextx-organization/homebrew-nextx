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
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.4/gymmaster-darwin-arm64.tar.gz"
      sha256 "efc7d45d9cd265b3d7f940888f6a8a3aaabe9e3609ddcf116a476ca00da90744"
    end
    on_intel do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.4/gymmaster-darwin-x64.tar.gz"
      sha256 "8a77a27f166103f305225449336ae42023da06e615288157185f525a1ef18262"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.4/gymmaster-linux-arm64.tar.gz"
      sha256 "2e0dc9cf764c568397d87c71f4831c28f3ead3946a5a880cf7472d01bb1ae64b"
    end
    on_intel do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.4/gymmaster-linux-x64.tar.gz"
      sha256 "ac5a129dce7c89e88c5a356d86b2c798e1d9ac18eec958ae7c2d322b484dd499"
    end
  end

  def install
    bin.install "gymmaster"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gymmaster --version")
  end
end
