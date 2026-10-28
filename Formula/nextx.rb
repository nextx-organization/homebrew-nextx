class Nextx < Formula
  desc "NextX in your terminal: chat with NextX AI on your workspace data, call the API, manage keys and webhooks"
  homepage "https://developers.nextx.vn/docs/cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.2.0/nextx-darwin-arm64.tar.gz"
      sha256 "58f902668d539f52a529342566a5882a3af60a43ee382e86f4e5cfbc1cf95010"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.2.0/nextx-darwin-x64.tar.gz"
      sha256 "e1863591af4995537e16c63961070cf42cef81d8721738c81773e9fb34272a46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.2.0/nextx-linux-arm64.tar.gz"
      sha256 "b7aaa3f03411548b2fbf67e4593c2cd6e3ef2019803df4d2b12771d944b4b630"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.2.0/nextx-linux-x64.tar.gz"
      sha256 "fe0d2b898cc30b797d5780da8eb910060f7cfb877c68f2f9cc7f0ef263c84dd5"
    end
  end

  def install
    bin.install "nextx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nextx --version")
  end
end
