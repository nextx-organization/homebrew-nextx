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
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.8/nextx-darwin-arm64.tar.gz"
      sha256 "4b24484ca8d3b86c4c457e793cf9d960e11f42f3aa9d9848d5da2a02a83860f1"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.8/nextx-darwin-x64.tar.gz"
      sha256 "baa2e18b5f152b3fe5dbdb13377278be03da1c98bfdf4737d5a4959fa1c313ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.8/nextx-linux-arm64.tar.gz"
      sha256 "4edf1e8c50ede736486b5da254d6ae283bf39844966ef98c116c652376074958"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.8/nextx-linux-x64.tar.gz"
      sha256 "1c0fdb613ffb00717ba5ff55bb30c0abe8917365b618ac0df9e40bbe8b5a3dca"
    end
  end

  def install
    bin.install "nextx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nextx --version")
  end
end
