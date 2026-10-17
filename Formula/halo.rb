class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.69.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.69.0/halo_darwin_arm64.tar.gz"
      sha256 "fd2632977636464bfbffe48bfea663445796b6934fc8160af532aa387ef158d5"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.69.0/halo_darwin_amd64.tar.gz"
      sha256 "c0b85e98a06ecc4666fc156b6112b6498cf961e3fb0189dd312062476436f047"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.69.0/halo_linux_arm64.tar.gz"
      sha256 "515498823cc1518929b02776b58ed2b98649bc8a3daf8c2dcef83c2011e9b99a"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.69.0/halo_linux_amd64.tar.gz"
      sha256 "a35169e31ccfc14b7152872f5a60e381cfc0e5a88badf53a3895a8fd41d26f6f"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
