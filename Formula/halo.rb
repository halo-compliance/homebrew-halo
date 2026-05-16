class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.6.6"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.6/halo_darwin_arm64.tar.gz"
      sha256 "9a64b186ef847a34bab7c83c2541adc8320f9f4469c6877df6af87323b7b01a2"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.6/halo_darwin_amd64.tar.gz"
      sha256 "b0b4ceb0e10bc8a897a8283e0b7ef2326f81c282380dd39a91a8b61758e02f6f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.6/halo_linux_arm64.tar.gz"
      sha256 "6277888b5be6d39561a62e99760c80446267a0b15b5e5d35d02835d498727759"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.6/halo_linux_amd64.tar.gz"
      sha256 "7e55548684ba5cb8447adf527f819fcf3859fa2e10123a149dfa2dd2c9ebe28e"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
