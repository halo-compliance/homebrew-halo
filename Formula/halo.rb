class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.42.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.42.0/halo_darwin_arm64.tar.gz"
      sha256 "bf2313ac04949253a42eaf4600d20737c46416b2a6b6ff36f78d9376ffc5aa26"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.42.0/halo_darwin_amd64.tar.gz"
      sha256 "eb8e378f4395edc5e96f981f2390da8f239fdf8257c7bc2dd1484caaeb7fe358"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.42.0/halo_linux_arm64.tar.gz"
      sha256 "90519a3a2908b2485fbba37d2b54a7cf84361cee325d6d120d6a4450f681f0ca"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.42.0/halo_linux_amd64.tar.gz"
      sha256 "1bc06026f882bac23d794d72e1152ff138dad970dc4b1dc81c6bd568afe65df9"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
