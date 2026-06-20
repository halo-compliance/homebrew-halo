class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.41.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.41.0/halo_darwin_arm64.tar.gz"
      sha256 "f81a26fa7e16a91c11f404bc66b897a5b1fbe95ae6cb28a54c54ee9a95b0ae3e"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.41.0/halo_darwin_amd64.tar.gz"
      sha256 "9c375a8c37d35f688466b4e62e414ba520949363bae5d362002517e715b6d3ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.41.0/halo_linux_arm64.tar.gz"
      sha256 "c0bb4f23a330a1b914a37a776d7a764288792c9a9f7661950c5ba46083d79c46"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.41.0/halo_linux_amd64.tar.gz"
      sha256 "dc79cebf807c83262c223a14f2f58a5098b7e18a2b54c4877033c453af0e2fcc"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
