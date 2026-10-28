class Nextx < Formula
  desc "NextX in your terminal: chat with NextX AI on your workspace data, call the API, manage keys and webhooks"
  homepage "https://developers.nextx.vn/docs/cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.1.0/nextx-darwin-arm64.tar.gz"
      sha256 "bdc19404ebbd36d3fcbc76d6b10afb00c3c3577f177b23a4c428534bf389643b"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.1.0/nextx-darwin-x64.tar.gz"
      sha256 "29f5f48212affd3e42fd374e39c91535ca23caf309cea55ebbaf9e639a05a2f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.1.0/nextx-linux-arm64.tar.gz"
      sha256 "f799bd8c183038c374869a51a63cd23342b8ace7d908fe3a1dfeec937f16dbb2"
    end
    on_intel do
      url "https://github.com/nextx-organization/nextx-cli/releases/download/v0.1.0/nextx-linux-x64.tar.gz"
      sha256 "2d3390943293efebe28b637cde5258cc28787c24f88a2b9ec826acf8c93aefe3"
    end
  end

  def install
    bin.install "nextx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nextx --version")
  end
end
