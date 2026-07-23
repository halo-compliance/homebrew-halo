class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.60.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.60.0/halo_darwin_arm64.tar.gz"
      sha256 "b63baf34b4439c083a295671ced20bf45474e5e1a75bcd63f941fd682e36b135"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.60.0/halo_darwin_amd64.tar.gz"
      sha256 "e3f7a27ed8a6f70fb7617fc3b717a3c8901afa6f9b8d11b6f32e0cf5718c1cd7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.60.0/halo_linux_arm64.tar.gz"
      sha256 "0ec42ba27e218b398870f03c84b411f04191c7b7817bf1b926f4e456e6208dbf"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.60.0/halo_linux_amd64.tar.gz"
      sha256 "d6dd0c167cda1c1ee867c1b194a46d14594a6ae2c97a7f085679c1dbcacb76a0"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
