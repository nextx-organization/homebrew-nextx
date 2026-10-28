class Nextx < Formula
  desc "NextX in your terminal: chat with NextX AI on your workspace data, call the API, manage keys and webhooks"
  homepage "https://developers.nextx.vn/docs/cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.1.1/nextx-darwin-arm64.tar.gz"
      sha256 "b9ba1b54fcf634b98d9580c6781933bd90f70b470e2d976c6ca92a3b638ade76"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.1.1/nextx-darwin-x64.tar.gz"
      sha256 "4279673b5d154f9d154ddd333c61a6c7dae1f4d926b72d52ace004376790add8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.1.1/nextx-linux-arm64.tar.gz"
      sha256 "d3d953a845c65b9369db73fd904988b194267d09493c0b700c0c2debd8d8f85b"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.1.1/nextx-linux-x64.tar.gz"
      sha256 "15c55daa777f71e73c67538d64cc0ad35fffe5d41186f02774e3b2ab97aeec9e"
    end
  end

  def install
    bin.install "nextx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nextx --version")
  end
end
