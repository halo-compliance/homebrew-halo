class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.29.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.29.0/halo_darwin_arm64.tar.gz"
      sha256 "8aefcf7a770daa8faf00aced6f8cb5ea3c82330d3373e5626cb3041d1e36473a"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.29.0/halo_darwin_amd64.tar.gz"
      sha256 "19db8480fca1a2037fe430f636aee281d02c26c281b2088b61e97c1257726ead"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.29.0/halo_linux_arm64.tar.gz"
      sha256 "1181ec3595c93028372bcb274e771949a8495b145a353d6e613fab67e03c54a8"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.29.0/halo_linux_amd64.tar.gz"
      sha256 "80429451e66f68ce3098640bf4756a688ed3479fc26061eedb6aa7794cd80b31"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
