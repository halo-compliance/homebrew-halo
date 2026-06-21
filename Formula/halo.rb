class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.47.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.47.0/halo_darwin_arm64.tar.gz"
      sha256 "1db273d68b307ca2b7a2dec4f449a6addf507c1ea3db8aef60b4d365433ca129"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.47.0/halo_darwin_amd64.tar.gz"
      sha256 "38d78b8c1eb4bc5ebb4d1c9b67952f5da6dbff68e852882a591a368e21e3f9e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.47.0/halo_linux_arm64.tar.gz"
      sha256 "66f818259561b05ee102d4d9765a0e0a54ab62a08a706345559019aa6aa5cb5b"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.47.0/halo_linux_amd64.tar.gz"
      sha256 "b9fcf3f41d0f07db5f3b55f45e18e53608d81a49b5a6f6368c31a1d1ac6822eb"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
