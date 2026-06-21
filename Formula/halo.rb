class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.52.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.52.0/halo_darwin_arm64.tar.gz"
      sha256 "f9ee2bf509ff77e7726fe49a1c512df70807142f2e1fe7d4e3c8d33a2e17bbe3"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.52.0/halo_darwin_amd64.tar.gz"
      sha256 "b2202a9d10dc3dd52d75bd2eba27ca8911e1f44063bba8a19a306596aac724d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.52.0/halo_linux_arm64.tar.gz"
      sha256 "ecccda5ed63924dd98bb500acbd5d81db2a10528e73d5151e89358aeb7116e23"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.52.0/halo_linux_amd64.tar.gz"
      sha256 "14ec8c74d1197df0e92bf6506c23adc547d3c035ca2f2cb0bde049342ca28c4e"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
