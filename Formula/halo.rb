class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.27.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.27.0/halo_darwin_arm64.tar.gz"
      sha256 "d142b8f7ec78e2a66b37302f19840cc82604ff5dac2b4a653d6e72b3c9083ccb"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.27.0/halo_darwin_amd64.tar.gz"
      sha256 "714f6fb98576412bc99673242f3e3bc1f8c00f45d0b32dfbcd2e790d575437f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.27.0/halo_linux_arm64.tar.gz"
      sha256 "99070bff18fb936c5c59f8cb3720d14074f523106adbdaef7b27e073fed685a4"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.27.0/halo_linux_amd64.tar.gz"
      sha256 "e27fefc86f8c50f99ca960972687d09b530b0de57b53c6b33022aeb0654a7ef9"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
