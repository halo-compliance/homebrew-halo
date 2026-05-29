class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.19.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.19.0/halo_darwin_arm64.tar.gz"
      sha256 "ab2abcad9cb0f1ce11bc99fab6a98512a8c1ea7c07354567af402df1376499bb"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.19.0/halo_darwin_amd64.tar.gz"
      sha256 "6321de69f217bf06d388fe0ee12a12b9be396383b2335100199ccd7727745c9d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.19.0/halo_linux_arm64.tar.gz"
      sha256 "c62cbf66cb07b2d9e07a91095b624739dafaf0b466bafea037a7e6a0787d6fce"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.19.0/halo_linux_amd64.tar.gz"
      sha256 "f000f1fc8f836c0ba3ebcdf30f8f0a33b43bead1ef2f2357e61664ee5a5a68b2"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
