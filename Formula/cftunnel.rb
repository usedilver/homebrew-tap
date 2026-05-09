class Cftunnel < Formula
  desc "CLI to manage Cloudflare Tunnels in a single command"
  homepage "https://github.com/usedilver/cloudflare-tunnel-cli"
  url "https://github.com/usedilver/cloudflare-tunnel-cli/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "f18b905fed4a268ddf95a50cf33a8c11b9232a1d1439b0df89f3208c9239fea4"
  license "MIT"

  depends_on "cloudflare/cloudflare/cloudflared"

  def install
    bin.install "cftunnel"
  end

  test do
    assert_match "cftunnel v#{version}", shell_output("#{bin}/cftunnel version")
  end
end
