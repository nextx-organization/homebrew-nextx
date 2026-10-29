class Nextx < Formula
  desc "NextX in your terminal: chat with NextX AI on your workspace data, call the API, manage keys and webhooks"
  homepage "https://developers.nextx.vn/docs/cli"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.2/nextx-darwin-arm64.tar.gz"
      sha256 "a810d699a57b451bcdb3b951be1190b1f842baef6568f249acb3fc127c83bcbb"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.2/nextx-darwin-x64.tar.gz"
      sha256 "42d0a2f895ae3965c3e18da689efff75317da0b29ab1fc0f26ca9845b15d25bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.2/nextx-linux-arm64.tar.gz"
      sha256 "7d0ae92ef0a63f6feb71c942cf71772581d3314aa3c802e6232524915a941247"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.3.2/nextx-linux-x64.tar.gz"
      sha256 "f1a5a49059354d9c9e6967c21b44b8dd3bea395ceb5d371b9b2e66f978f9f0bf"
    end
  end

  def install
    bin.install "nextx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nextx --version")
  end
end
