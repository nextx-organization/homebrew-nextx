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
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.8/gymmaster-darwin-arm64.tar.gz"
      sha256 "91f37a366fadceab609d77912fce5adc762182f38aaef4f48fd8186773a5dd80"
    end
    on_intel do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.8/gymmaster-darwin-x64.tar.gz"
      sha256 "ecaf176a8586fe6fa8cb50cf65069feaf10ecc85c63013135d82336538e86ca4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.8/gymmaster-linux-arm64.tar.gz"
      sha256 "808ff1165d561164e2f00e8752848a1b2598c3be7cd86cdb60c788cf88a5bba4"
    end
    on_intel do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.8/gymmaster-linux-x64.tar.gz"
      sha256 "d3ad4a05c9254458e47c8737c51e1acfdcbd783b2846cde34341599cf7ef17e3"
    end
  end

  def install
    bin.install "gymmaster"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gymmaster --version")
  end
end
