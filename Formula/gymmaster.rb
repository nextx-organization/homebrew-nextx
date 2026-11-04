class Gymmaster < Formula
  desc "Command-line client for Gym Master AI: chat, API, keys and webhooks"
  homepage "https://developers.gymmaster.vn/docs/cli"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.9/gymmaster-darwin-arm64.tar.gz"
      sha256 "ac854863217f0b3c54ddb1c4acace373758deaadf7da9ea84968c22ad3070e02"
    end
    on_intel do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.9/gymmaster-darwin-x64.tar.gz"
      sha256 "9351535e36a3dde0469c338c1e4bcaf3fbe0c29a5fb224805f01ab9f7f928098"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.9/gymmaster-linux-arm64.tar.gz"
      sha256 "1a1a88d0a2abccbd5442749c4a9537676bea0a65a611bbee3ad67cd9639d5c8e"
    end
    on_intel do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.9/gymmaster-linux-x64.tar.gz"
      sha256 "bf4dddc917bbc7cb8fb3dce51158e514e424a7e8b32d5325d8e883c0755df280"
    end
  end

  def install
    bin.install "gymmaster"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gymmaster --version")
  end
end
