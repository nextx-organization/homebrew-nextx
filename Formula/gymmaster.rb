class Gymmaster < Formula
  desc "Gym Master in your terminal: chat with Gym Master AI on your workspace data, call the API, manage keys and webhooks"
  homepage "https://developers.gymmaster.vn/docs/cli"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.3/gymmaster-darwin-arm64.tar.gz"
      sha256 "ae16cbc529432f090784ec01e84c91f9375c0984f70ea77ec8fedaa5df1a2640"
    end
    on_intel do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.3/gymmaster-darwin-x64.tar.gz"
      sha256 "d2af481659779bde7c1f008928f09d103f488dd0c4fe8103567d7add2b207cdd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.3/gymmaster-linux-arm64.tar.gz"
      sha256 "df19c15ebd3fc96e9a9b39ba72f4fb1ed57344060ef9f78711537f274087ca83"
    end
    on_intel do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.3/gymmaster-linux-x64.tar.gz"
      sha256 "976cde29cc65743fb48fb33a7d7996cf9be75bff1dbe419f61cdd438377e92ca"
    end
  end

  def install
    bin.install "gymmaster"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gymmaster --version")
  end
end
