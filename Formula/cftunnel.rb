class Cftunnel < Formula
  desc "CLI to manage Cloudflare Tunnels in a single command"
  homepage "https://github.com/usedilver/cloudflare-tunnel-cli"
  url "https://github.com/usedilver/cloudflare-tunnel-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f57e46dfb9bf4ed0eaa90a9b6eda7478323f4bdab205e5c6c765140742cd0fbd"
  license "MIT"

  depends_on "cloudflare/cloudflare/cloudflared"

  def install
    bin.install "cftunnel"
  end

  test do
    assert_match "cftunnel v#{version}", shell_output("#{bin}/cftunnel version")
  end
end
