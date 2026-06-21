class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.49.1"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.49.1/halo_darwin_arm64.tar.gz"
      sha256 "da99b07b78602da9024cdb709e5050501bb14637b4221ce55067c89691f3cffc"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.49.1/halo_darwin_amd64.tar.gz"
      sha256 "d1907d6649d1ad2b71515fc6576804fbf8da41054c5716571f4e280049374760"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.49.1/halo_linux_arm64.tar.gz"
      sha256 "aa1d2a6b53a61eea26a966aa6107f412dee7fc01e2a2e1f5f06f382fae8a7403"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.49.1/halo_linux_amd64.tar.gz"
      sha256 "271f7135a1c7ccb9b6ead957a7401fa1497051a7e02997225058cfc7605226b2"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
