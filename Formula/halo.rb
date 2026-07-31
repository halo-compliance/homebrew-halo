class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.62.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.62.0/halo_darwin_arm64.tar.gz"
      sha256 "1fade841fe86d3cb4edc3669c0a52f15167e6af095b7ebb32c6112e90be8f8af"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.62.0/halo_darwin_amd64.tar.gz"
      sha256 "b9b22fac1d03d732b9ac618f88aa042e3f8a503a1cb0c937aa72633d486022c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.62.0/halo_linux_arm64.tar.gz"
      sha256 "fef2da17f3cc9d5b8bc349a2ced16849521a3c99df61b7695d9df17126f99222"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.62.0/halo_linux_amd64.tar.gz"
      sha256 "6c758693ffbbc26b61d5253be5c59ab72e1c393a7c4f95aafe4be2a555931c0d"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
