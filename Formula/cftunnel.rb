class Cftunnel < Formula
  desc "CLI to manage Cloudflare Tunnels in a single command"
  homepage "https://github.com/usedilver/cloudflare-tunnel-cli"
  url "https://github.com/usedilver/cloudflare-tunnel-cli/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "6dd5bfc435385f0342d1cc20e84d37d40901b1c45f5f4ca1db4fb1b3dd89ddf7"
  license "MIT"

  depends_on "cloudflare/cloudflare/cloudflared"

  def install
    bin.install "cftunnel"
  end

  test do
    assert_match "cftunnel v#{version}", shell_output("#{bin}/cftunnel version")
  end
end
