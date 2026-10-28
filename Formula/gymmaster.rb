class Gymmaster < Formula
  desc "Gym Master in your terminal: chat with Gym Master AI on your workspace data, call the API, manage keys and webhooks"
  homepage "https://developers.gymmaster.vn/docs/cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.1.0/gymmaster-darwin-arm64.tar.gz"
      sha256 "50470776a75f283aa55d4d6e666c8f45aebed9ad552a3de6fc30df7888481742"
    end
    on_intel do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.1.0/gymmaster-darwin-x64.tar.gz"
      sha256 "a826021587935a6089758c7f81da4a48b0d73a4c45ff5a77e9334174b36ebf3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.1.0/gymmaster-linux-arm64.tar.gz"
      sha256 "57d587147270851fe1a39b1b301949bd897d288eac2a56ee7ea25a22f8cdec1c"
    end
    on_intel do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.1.0/gymmaster-linux-x64.tar.gz"
      sha256 "8afa0e922a4581989d9786984359611c57ca807ea2adfec362b7f48161e4cc2f"
    end
  end

  def install
    bin.install "gymmaster"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gymmaster --version")
  end
end
