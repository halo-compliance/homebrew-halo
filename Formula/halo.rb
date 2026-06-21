class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.51.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.51.0/halo_darwin_arm64.tar.gz"
      sha256 "48a6dbc5a65d478d2b380826aeee9c66ca366248e07c76e8989205b73101f0cb"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.51.0/halo_darwin_amd64.tar.gz"
      sha256 "b31101f7575aa0290c631cf8f217904d6d9fc13c1469766310e3f2c3abef84e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.51.0/halo_linux_arm64.tar.gz"
      sha256 "2f4db3f6662733c3c540296777787e0a59e73d6d1b0f6567ad58c384be7eb673"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.51.0/halo_linux_amd64.tar.gz"
      sha256 "cc23a18238a3192f8f266239dd4b284ea412732b838608b9dcc5c8b5fae1bcf1"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
