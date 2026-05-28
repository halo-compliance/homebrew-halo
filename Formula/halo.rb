class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.16.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.16.0/halo_darwin_arm64.tar.gz"
      sha256 "3d4e6fb810f77a7b6c76dbfe43120541d984e87bb172e766ef105b247c64b7fe"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.16.0/halo_darwin_amd64.tar.gz"
      sha256 "dcfe269868ca63977a05f8a0094d50fc7e2deb663b333feb35c49f7be064558f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.16.0/halo_linux_arm64.tar.gz"
      sha256 "b5223ab29a160ea1501dd210876fab9c72011f68c95cce58d0bf21a92ab70b35"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.16.0/halo_linux_amd64.tar.gz"
      sha256 "7f49393246923260e991eec11431fe0e390ba0a1bb9a28d8aad6f3856ddb8b0c"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
