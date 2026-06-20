class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.40.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.40.0/halo_darwin_arm64.tar.gz"
      sha256 "09e5915ddb6542c33e2046e7eae2c5d01931bde7bba922a3e9d24749d9788b81"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.40.0/halo_darwin_amd64.tar.gz"
      sha256 "50a50b98d3b399518a769e33f04354b2daaae62164804e29c93dbb623cb05e79"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.40.0/halo_linux_arm64.tar.gz"
      sha256 "19f1f1a750b80e8db16a6c05091a77c0fdb82486b87638e7fd775231f503a32f"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.40.0/halo_linux_amd64.tar.gz"
      sha256 "07ae968281f316fb22dfef3598056dd95439ae076a2fc0625fe8a08e394c674c"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
