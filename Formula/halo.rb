class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.65.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.65.0/halo_darwin_arm64.tar.gz"
      sha256 "5f212d895828f67c254b45e92fd8de300f2c3b6accd885c245dfc2ba6f6c4fe4"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.65.0/halo_darwin_amd64.tar.gz"
      sha256 "cfd9cdd25d835aad388e550571558604654546a119e37b68e505c805eccf1754"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.65.0/halo_linux_arm64.tar.gz"
      sha256 "675902ba7e07991a729d3bdfd285a959dde6816369696951a79947b8a73f4c6b"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.65.0/halo_linux_amd64.tar.gz"
      sha256 "99a4d2b586ffdcb4945f315014423e9d59078d573c39f929376eb439253e90f1"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
