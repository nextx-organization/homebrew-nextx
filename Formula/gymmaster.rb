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
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.5/gymmaster-darwin-arm64.tar.gz"
      sha256 "bb78def936c395f391121f77015fa4bbec58fb0bad72db135478fde26586e2ab"
    end
    on_intel do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.5/gymmaster-darwin-x64.tar.gz"
      sha256 "e79b94bdde83c6fa07a5cd0cb8855e7e25355fbe296e6ab2c8fa248c15acbd6d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.5/gymmaster-linux-arm64.tar.gz"
      sha256 "abf89b8608f484c9dc85c68557399f65a2d0aa384f71deeecf3e87959919ec64"
    end
    on_intel do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.5/gymmaster-linux-x64.tar.gz"
      sha256 "b2cf32713553c33c8587125dcb8194fa617001d12c3c5508015ba70719cc2112"
    end
  end

  def install
    bin.install "gymmaster"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gymmaster --version")
  end
end
