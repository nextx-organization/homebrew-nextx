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
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.7/nextx-darwin-arm64.tar.gz"
      sha256 "8fa82e5e1bc00c0ac62301d56fcf2dc5e483bde1439bbb919b08dc117166216f"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.7/nextx-darwin-x64.tar.gz"
      sha256 "d43418155514b66d7a8950a7b77b6bad7a21f562dfb4949b4f3507c2f2f9ec9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.7/nextx-linux-arm64.tar.gz"
      sha256 "8c143a2329f1802511d75a9b8804061e324a6382f1fd40a987056862f087339e"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.7/nextx-linux-x64.tar.gz"
      sha256 "e7348df7c4fdd83c98bfbe628be9dc87898a293f1ef48eca638ccd100a332bbe"
    end
  end

  def install
    bin.install "nextx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nextx --version")
  end
end
