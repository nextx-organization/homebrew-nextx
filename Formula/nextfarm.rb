class Nextfarm < Formula
  desc "NextFarm in your terminal: chat with NextFarm AI on your workspace data, call the API, manage keys and webhooks"
  homepage "https://developers.nextfarm.vn/docs/cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nextx-organization/nextfarm-cli/releases/download/v0.2.0/nextfarm-darwin-arm64.tar.gz"
      sha256 "c0ac8d905428e94c353a296d6dc5ae53f2f89280f493b712f5ed5cd4d2d4d905"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextfarm-cli/releases/download/v0.2.0/nextfarm-darwin-x64.tar.gz"
      sha256 "93b4bf603e2c384c8465945ff79e6bcc28b29c29be04241542c41c40a580cdcd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/nextfarm-cli/releases/download/v0.2.0/nextfarm-linux-arm64.tar.gz"
      sha256 "cf6cb7d7883d541fde222a9e3b58f6374c7af64cb3e4b162735870a327667d7c"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextfarm-cli/releases/download/v0.2.0/nextfarm-linux-x64.tar.gz"
      sha256 "6ec288a492932a94abfc3ca16735d48e0e055b55f39de3ef107cb6198fada280"
    end
  end

  def install
    bin.install "nextfarm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nextfarm --version")
  end
end
