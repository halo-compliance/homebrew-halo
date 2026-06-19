class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.37.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.37.0/halo_darwin_arm64.tar.gz"
      sha256 "7b0b5e9d178890561ce6ebf0488b5e8e76f4cb48259950b371807b06b13ac006"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.37.0/halo_darwin_amd64.tar.gz"
      sha256 "e97fb1965dc7ecae06ef1a66c2ce2fefcb9f4bb939ac499af03d055deec51028"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.37.0/halo_linux_arm64.tar.gz"
      sha256 "55796ea523c4aad4bc1eaa4760fa9795e1c6490547b874179ed09fbc026118f0"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.37.0/halo_linux_amd64.tar.gz"
      sha256 "2cda55c46b461616f2f98094ba7b1285c1cd37a7f65f7f16486022d8f8c21a47"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
