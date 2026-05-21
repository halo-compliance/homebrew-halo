class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.9.2"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.9.2/halo_darwin_arm64.tar.gz"
      sha256 "8db689b381447e7ebf740383b57bedfcead93bdeaa2540cbefb87db6a08c9ce1"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.9.2/halo_darwin_amd64.tar.gz"
      sha256 "09874d7555441fd9c09cabbdfe5380d7d0248b516393a58b78eaf839b6730ddd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.9.2/halo_linux_arm64.tar.gz"
      sha256 "b7531c149f392a0f4ef5fc801c36e9ac58cad367c58d9b2d2ea4ef14ae7eee34"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.9.2/halo_linux_amd64.tar.gz"
      sha256 "033fcc36c68ad465eb24cca70573ec2feec7373bf6f9b64b25a3e1bf377bb0a7"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
