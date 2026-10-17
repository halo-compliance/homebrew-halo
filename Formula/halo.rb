class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.69.1"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.69.1/halo_darwin_arm64.tar.gz"
      sha256 "eb6de54ec839d50320e79776569e25930f81cc65c5261f64b345175ea3498bc9"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.69.1/halo_darwin_amd64.tar.gz"
      sha256 "4686bbf72fe6a5bf2bfb4aa91f9b9322ef4f48ebb440fe323cc7fe18af821b2a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.69.1/halo_linux_arm64.tar.gz"
      sha256 "66957f599e43ecc8ad39726423d54f378d834338e6f28b7a007c96ac60b85805"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.69.1/halo_linux_amd64.tar.gz"
      sha256 "20915cfe9c9497a701cce9bd35045c251d54284b0b2072a2dac2da9feec759c0"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
