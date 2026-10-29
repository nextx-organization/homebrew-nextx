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
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.5/nextx-darwin-arm64.tar.gz"
      sha256 "24ea65b475fcb359ce2fc627945df86481b5ddaaed73054e7fcb698727d94429"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.5/nextx-darwin-x64.tar.gz"
      sha256 "a68a396d3c72a6c359beaacd72e4c6bfb4cbea922248869a43e562cf29604b0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.5/nextx-linux-arm64.tar.gz"
      sha256 "4d78e402fc27c42a588ad2360849648adf57694163772bada51f0a3f6f8f8d07"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.5/nextx-linux-x64.tar.gz"
      sha256 "90c433a7ce1e7f6b9ea529f3c043a68285bb0899c219481177eb96e08c963299"
    end
  end

  def install
    bin.install "nextx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nextx --version")
  end
end
