class Nextfarm < Formula
  desc "NextFarm in your terminal: chat with NextFarm AI on your workspace data, call the API, manage keys and webhooks"
  homepage "https://developers.nextfarm.vn/docs/cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nextx-organization/nextfarm-cli/releases/download/v0.1.0/nextfarm-darwin-arm64.tar.gz"
      sha256 "cea8b47b109a98cc567a37a26bbe0612c29f65e6449e1e3c7b9c859e34f55aa9"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextfarm-cli/releases/download/v0.1.0/nextfarm-darwin-x64.tar.gz"
      sha256 "a43ea31d73d0054753f9ee5607343cba7b6d6b2267dcb2ac09b0aa36261529c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/nextfarm-cli/releases/download/v0.1.0/nextfarm-linux-arm64.tar.gz"
      sha256 "3f40b02dfdeaad05d4282725257c6c564ad28ffeb52fd260559e6cfe8a672816"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextfarm-cli/releases/download/v0.1.0/nextfarm-linux-x64.tar.gz"
      sha256 "195ced4147e5cd481d66d3c3dcb1604989bf9d84912fb6c44cd1a6531d209441"
    end
  end

  def install
    bin.install "nextfarm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nextfarm --version")
  end
end
