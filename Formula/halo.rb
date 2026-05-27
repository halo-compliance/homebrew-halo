class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.13.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.13.0/halo_darwin_arm64.tar.gz"
      sha256 "6669f0970692575ae90f7620d49bd60f54881c686e97d407629ffcf8c5dd98e2"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.13.0/halo_darwin_amd64.tar.gz"
      sha256 "48165f1c22f9a1a746d9b932572e8524ad7f05c79ee5fc51eb1c96f2d6c7d222"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.13.0/halo_linux_arm64.tar.gz"
      sha256 "7eaf33fc0823dffbf2322cd49bf6cf1f3935a68873be35535093778d3eac2ebd"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.13.0/halo_linux_amd64.tar.gz"
      sha256 "36f22cc1a88575d1723e527a4cb832f71b332c80831e8da6bf8fb23f44e9a975"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
