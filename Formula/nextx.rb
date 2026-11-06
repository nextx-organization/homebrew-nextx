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
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.11/nextx-darwin-arm64.tar.gz"
      sha256 "20e4be34fbbc3919563fdd46a86df41c9c36f75b1cd9435b3a8d724ed29977ed"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.11/nextx-darwin-x64.tar.gz"
      sha256 "738bbf6c5d85b67fee62e6567feb689c43ff1155b76b29111254f64b6ea2e48d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.11/nextx-linux-arm64.tar.gz"
      sha256 "875f40f4740eb6c68dcb965047ac386828f6313b707cd7260185dbc8fb01f586"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.11/nextx-linux-x64.tar.gz"
      sha256 "c8912c424fdbb1fd781054dc9b4c1578d4fee2f812aca8a1a5afeeaf34da31bc"
    end
  end

  def install
    bin.install "nextx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nextx --version")
  end
end
