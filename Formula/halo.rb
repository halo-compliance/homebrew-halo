class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.50.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.50.0/halo_darwin_arm64.tar.gz"
      sha256 "055ea7df1393556eeba84ac20ed8cbc2cad9c901248fde5b2ff22611a344f0e9"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.50.0/halo_darwin_amd64.tar.gz"
      sha256 "de38d2bdf7e943997d273ce089c4a084b99fac7f14f6130c2914433828723f4c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.50.0/halo_linux_arm64.tar.gz"
      sha256 "8f5eb46b8a58cccb0c7fbf8a12fb9520e90bb5c2d355ecbbc1a764696b0ab682"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.50.0/halo_linux_amd64.tar.gz"
      sha256 "41e6564b73c170a553b983653202ebf5557275035dbf25898a4de721f10c0078"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
