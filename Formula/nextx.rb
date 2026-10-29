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
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.4/nextx-darwin-arm64.tar.gz"
      sha256 "d05a413cd3dab3a84ad7ba801dca8ed213df476c3aa5ddf4ac19a853ab3fe087"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.4/nextx-darwin-x64.tar.gz"
      sha256 "fb2be4be2df1d5cfca2c7c88c9d9743e22f9ec3203a97f1b3257d0af80845525"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.4/nextx-linux-arm64.tar.gz"
      sha256 "ea76f51d7ede8c944378e6b6a0841a8b4acebe09e750d18935cc0887919fd77c"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.4/nextx-linux-x64.tar.gz"
      sha256 "cc38c4b196390085c5f0a9d77fc47123fb59709de18201513570e6c1bfb6a4eb"
    end
  end

  def install
    bin.install "nextx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nextx --version")
  end
end
