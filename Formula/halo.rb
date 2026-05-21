class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.9.1"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.9.1/halo_darwin_arm64.tar.gz"
      sha256 "a221c272ca9beb76e78eedd00ca8637c6332484dc614af616be8b78ac982e59b"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.9.1/halo_darwin_amd64.tar.gz"
      sha256 "19cf02fb49bb0dcc898dc7450085adc529a29d3df0acc9951e3d6ee676a40fe7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.9.1/halo_linux_arm64.tar.gz"
      sha256 "93b87517bc9192586efd13c24d89458a6beb45391044611c2c0f9d79029a47a9"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.9.1/halo_linux_amd64.tar.gz"
      sha256 "d6de9f4baefe2d84cbe391923f5f2dcf5f2d10577616cbbd7e09a845ff682e68"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
