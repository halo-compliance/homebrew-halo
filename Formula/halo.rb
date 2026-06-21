class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.49.2"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.49.2/halo_darwin_arm64.tar.gz"
      sha256 "5b9faff92966d7086804559f3b7347a3f8b99a34cd1d87ea082d879f43be0fc1"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.49.2/halo_darwin_amd64.tar.gz"
      sha256 "4adbc0a6a6225854666062174879f139b36e2d8dd3680d50e94bb003e160cb8b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.49.2/halo_linux_arm64.tar.gz"
      sha256 "ffa75b49449fe4884a79f4d40a0e4720dc3c77fa1e0524126909e0288b6436d8"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.49.2/halo_linux_amd64.tar.gz"
      sha256 "24a72ad5fa9fa670e8b132c4a9b4af182a657b797b26d130a80d1d9949ee87b8"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
