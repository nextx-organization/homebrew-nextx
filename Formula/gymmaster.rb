class Gymmaster < Formula
  desc "Gym Master in your terminal: chat with Gym Master AI on your workspace data, call the API, manage keys and webhooks"
  homepage "https://developers.gymmaster.vn/docs/cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.2.0/gymmaster-darwin-arm64.tar.gz"
      sha256 "1ffe777fe8c181a764ccca2a732c5de126484cbee44e5be54157cc704bd02102"
    end
    on_intel do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.2.0/gymmaster-darwin-x64.tar.gz"
      sha256 "4fc9d58332582ec7e14d9eafc85e555bc00808eece95c2bb0a1d4122b58448cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.2.0/gymmaster-linux-arm64.tar.gz"
      sha256 "85d40b65742d7c36e717e04695418713f050119ceadf33bd342b6d459f2f46ad"
    end
    on_intel do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.2.0/gymmaster-linux-x64.tar.gz"
      sha256 "24244ecc1c391cb082fb6585e3be9d5c085ec8d87bceeb2afaa0d1cdebbd8ffa"
    end
  end

  def install
    bin.install "gymmaster"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gymmaster --version")
  end
end
