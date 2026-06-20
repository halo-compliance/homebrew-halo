class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.42.1"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.42.1/halo_darwin_arm64.tar.gz"
      sha256 "e92582fa6beafdee2a92a488b70f42e5ec2f9134cb78f919128964888d165a4f"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.42.1/halo_darwin_amd64.tar.gz"
      sha256 "499693828ccc73dab5c004bdecefb2ba2deb1e4767deb4b0d91b3e0bcd3c5feb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.42.1/halo_linux_arm64.tar.gz"
      sha256 "9817c2db7b4fe3f199f5ce07b7eb9a6565e5f6f7f1da44b36f4c26a6c69992c9"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.42.1/halo_linux_amd64.tar.gz"
      sha256 "9b9f2b0d92aa761f1bb42af497211c933fc66c043eec4c21b03a7577481f1b58"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
