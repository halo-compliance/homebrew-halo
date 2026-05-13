class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.2.4"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.2.4/halo_darwin_arm64.tar.gz"
      sha256 "cc75f5df721d8a604a393ac7a350f6a75a4d8314653fdf8feea9cb0432d06c8e"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.2.4/halo_darwin_amd64.tar.gz"
      sha256 "d09579de9341a3306552bcdae53d56912a8fffc13d7c9c9948779d296cc1c851"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.2.4/halo_linux_arm64.tar.gz"
      sha256 "f1849a1eb25767ad31d18ed4e806be28d2a8f39483cbb4e9ec2435c6838a8983"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.2.4/halo_linux_amd64.tar.gz"
      sha256 "83574c1339c5937deda22867b73c911552de0c23a0dc61430b103a9afa4137bb"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
