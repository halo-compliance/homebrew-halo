class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.31.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.31.0/halo_darwin_arm64.tar.gz"
      sha256 "f7bb4272ebb5c8bac07e60668b98915d4fc3767653b815b8f86907eb1363a72c"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.31.0/halo_darwin_amd64.tar.gz"
      sha256 "9c1f6670c995201659b3e2213ec5f9afd7a6a6e6e3c5ebb3c88a3691168d6729"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.31.0/halo_linux_arm64.tar.gz"
      sha256 "61168cd14b19df9353d152b82421c5ca01bd7bd04cdf1b1bacd479307bc90e22"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.31.0/halo_linux_amd64.tar.gz"
      sha256 "d535d2255391f4e26a992e00429cc79aa53569a197d5c5455f6c7d3f81e579b4"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
