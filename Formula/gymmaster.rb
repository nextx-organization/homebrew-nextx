class Gymmaster < Formula
  desc "Gym Master in your terminal: chat with Gym Master AI on your workspace data, call the API, manage keys and webhooks"
  homepage "https://developers.gymmaster.vn/docs/cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.1.1/gymmaster-darwin-arm64.tar.gz"
      sha256 "4fe52df7878c5fc57878bcf615384bd98f9cfa90725619a7109c19f4f600e20a"
    end
    on_intel do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.1.1/gymmaster-darwin-x64.tar.gz"
      sha256 "db93959b8c04b8c18b7494346879b00f281163df6709ef005af8d4baf58da77e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.1.1/gymmaster-linux-arm64.tar.gz"
      sha256 "e1956452bee814ea9e3ab532f0e3397b8289e857d15a55c2a35d1fe29cd68e78"
    end
    on_intel do
      url "https://github.com/nextx-organization/gymmaster-cli/releases/download/v0.1.1/gymmaster-linux-x64.tar.gz"
      sha256 "5de4cccd3e29b69513e7619fe4b019a52ece2b978a163081cac99197e3113ba4"
    end
  end

  def install
    bin.install "gymmaster"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gymmaster --version")
  end
end
