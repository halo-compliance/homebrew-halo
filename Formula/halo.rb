class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.56.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.56.0/halo_darwin_arm64.tar.gz"
      sha256 "d1f1c7b242334cd3bed1234a141800a735d9c9ada207466adc58d54b28446ed2"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.56.0/halo_darwin_amd64.tar.gz"
      sha256 "a6f401833deada97bebddef567095c7bcff7656e0a3dee29bf04fb0bc3d68d03"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.56.0/halo_linux_arm64.tar.gz"
      sha256 "ba73e5c18cb10a74873dc3b944597a89004dfa48ac69f3ea4300891ca2d6234a"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.56.0/halo_linux_amd64.tar.gz"
      sha256 "b5edd50dcbbb9d314e7e6f736e95dbbf66c9d1032337d071f85d58a87988e99e"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
