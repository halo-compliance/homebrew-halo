class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.18.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.18.0/halo_darwin_arm64.tar.gz"
      sha256 "0b66849196b6e7a5e09c890508b30c6638af6c1f7a4526a0181e31c8660f75ef"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.18.0/halo_darwin_amd64.tar.gz"
      sha256 "a7fd26a8b0c4fa731dad6ca5b40da6c559575e6e9e9dd25e855fcf4710f9cfb7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.18.0/halo_linux_arm64.tar.gz"
      sha256 "75d74bd4d49516936feaff7c9febdf4515eaf4ca9ca6615b5f6ece145f1d38ca"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.18.0/halo_linux_amd64.tar.gz"
      sha256 "a8353e127bac715cf475581cd7e1ca6449d3460b8337014116bb971651dee5b8"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
