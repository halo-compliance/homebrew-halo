class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.2.1"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.2.1/halo_darwin_arm64.tar.gz"
      sha256 "e4e081e8b8269ccb7277feac75d55e506a74cd4be288f85c89cc64c8158360a6"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.2.1/halo_darwin_amd64.tar.gz"
      sha256 "c74440d63fce085df362681b259f09dd39fb3c2d2e7b054f1e5ed0b6579b5d5a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.2.1/halo_linux_arm64.tar.gz"
      sha256 "8821b943c4b420b79cdb74e0503eb592733e15d9e58335963c39e6c97948309c"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.2.1/halo_linux_amd64.tar.gz"
      sha256 "676a13347cdb372a130d83e776bb842b0e9bd3e441696a5d69fa72846027c48a"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
