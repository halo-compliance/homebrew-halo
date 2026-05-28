class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.17.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.17.0/halo_darwin_arm64.tar.gz"
      sha256 "9b5cc33d2955455c4d1bdbb0b47e05b471e800f876cf5056b660671afffcb481"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.17.0/halo_darwin_amd64.tar.gz"
      sha256 "98e3fbe957aadea6b867f48bed638c18ef4fadece44bb7094dc3984762acd638"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.17.0/halo_linux_arm64.tar.gz"
      sha256 "485de62afd21afa1a0b7b630ace6d29b7dc6e98e8c75b1bc5ec80d9c612f2112"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.17.0/halo_linux_amd64.tar.gz"
      sha256 "f195cb63dfcb5d87aebba36523ec0fa4af9d330a0126eb40cfc1f35083ed719a"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
