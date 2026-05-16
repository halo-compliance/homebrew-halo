class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.6.8"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.8/halo_darwin_arm64.tar.gz"
      sha256 "8c066bbfdd3e9d645e3ef2f88c63a5016d230d9cc19b3bc902d48bdf080902df"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.8/halo_darwin_amd64.tar.gz"
      sha256 "a7877b54be743c71406773311fd1d90211627f5dd47fa319b2655e8664336863"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.8/halo_linux_arm64.tar.gz"
      sha256 "63205ddbfa7b4296e8c2d1b9109dbdbd9e1899f0348b01e3845eb798fef6de68"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.8/halo_linux_amd64.tar.gz"
      sha256 "6da1844a50a4142e161534549e772ec25234e10937400cfcd5e7c6161cf1f5f4"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
