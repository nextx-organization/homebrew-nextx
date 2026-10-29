class Gymmaster < Formula
  desc "Gym Master in your terminal: chat with Gym Master AI on your workspace data, call the API, manage keys and webhooks"
  homepage "https://developers.gymmaster.vn/docs/cli"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.2/gymmaster-darwin-arm64.tar.gz"
      sha256 "dacdf59a23c4393d8face33dc1f6a98e50d5cf2167e638b0f82c8c06038e0dcd"
    end
    on_intel do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.2/gymmaster-darwin-x64.tar.gz"
      sha256 "3452d18630493e09c957fa1e0a6886633edd31310b4fdc3ed6d241a17d53a060"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.2/gymmaster-linux-arm64.tar.gz"
      sha256 "e2d01615dd22e2f4d082532c137e619ae537fa89d7361441f9f33c7e96bbf163"
    end
    on_intel do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.3.2/gymmaster-linux-x64.tar.gz"
      sha256 "91715619d0e48b422cdcb26393fb91a9df29e226f07a773e0b829337855724ed"
    end
  end

  def install
    bin.install "gymmaster"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gymmaster --version")
  end
end
