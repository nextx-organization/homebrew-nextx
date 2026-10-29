class Nextx < Formula
  desc "NextX in your terminal: chat with NextX AI on your workspace data, call the API, manage keys and webhooks"
  homepage "https://developers.nextx.vn/docs/cli"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.1/nextx-darwin-arm64.tar.gz"
      sha256 "d47c9440a4ae8166868942b8e312541d6f93e3c0095bcd7607a25368b7362e79"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.1/nextx-darwin-x64.tar.gz"
      sha256 "858c4c38774af46d6223d12ca6a0adc0cb9fad4fefc2b20a029260797d84cb0c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.1/nextx-linux-arm64.tar.gz"
      sha256 "099194af50e0fae81a347412b9c4ebb93db70acb08d11ee14e87b20646ba5016"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.1/nextx-linux-x64.tar.gz"
      sha256 "cd111f65898e133f102a1baf4c69179124b02713b3132e5acf19da404d29d025"
    end
  end

  def install
    bin.install "nextx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nextx --version")
  end
end
