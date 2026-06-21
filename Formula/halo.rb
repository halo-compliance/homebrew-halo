class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.50.1"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.50.1/halo_darwin_arm64.tar.gz"
      sha256 "80f88a5c961c4a69bf3bb02bfbe908a332ba8836ea8172b3e61ad946251e2176"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.50.1/halo_darwin_amd64.tar.gz"
      sha256 "d62149c61ce2f19024adb1ed7d0691cf131ab0be0df433102ed1415ddb1c78f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.50.1/halo_linux_arm64.tar.gz"
      sha256 "24137d46d8c0a612d0584ecb79b0079f7f8c9cd4d3f3e16ef60f1c78420d2ac7"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.50.1/halo_linux_amd64.tar.gz"
      sha256 "7f531bb16e2fa94683f0cf9799798e25fe150a615d966dd6e9726ec2fce5ffbe"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
