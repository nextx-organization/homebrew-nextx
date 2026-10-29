class Nextx < Formula
  desc "NextX in your terminal: chat with NextX AI on your workspace data, call the API, manage keys and webhooks"
  homepage "https://developers.nextx.vn/docs/cli"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.3/nextx-darwin-arm64.tar.gz"
      sha256 "39c4721c7caba455120ce34db7a6981a1d4f5acd6512c0c244c8776dc61142ca"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.3/nextx-darwin-x64.tar.gz"
      sha256 "b7eda4626156f836250e193a8e4bc2f402f8ec699d9c3e6ee8a9e2f871448d52"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.3/nextx-linux-arm64.tar.gz"
      sha256 "0fa6f7b41871ddf35f4591bd1d3d313a3b0befc443efa0a2e6ca01a764b7bbb0"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.3/nextx-linux-x64.tar.gz"
      sha256 "a4df5226f0abad07bf88a85905e9b36b723a951f6bee65e51107c6fd07fdf806"
    end
  end

  def install
    bin.install "nextx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nextx --version")
  end
end
