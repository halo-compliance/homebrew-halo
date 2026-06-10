class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.23.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.23.0/halo_darwin_arm64.tar.gz"
      sha256 "6760fcc09bd09380c8f86622b8b79c9350e3190c13f4f11b567fa939aea526e2"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.23.0/halo_darwin_amd64.tar.gz"
      sha256 "5ac63854d2860045bb020814874ba0d12c6ae025ddb29c0f015ab5641a6afd19"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.23.0/halo_linux_arm64.tar.gz"
      sha256 "c61ccc0d7ea4c0ac29d933108bd2d39aaaf75aca0a829b6c41ced9dcddf6072d"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.23.0/halo_linux_amd64.tar.gz"
      sha256 "f4cdb3772fc6dc1300930b7ccc633a7f579f7661d940e4829ee353ca8ae9fdb2"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
