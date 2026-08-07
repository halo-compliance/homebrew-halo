class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.63.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.63.0/halo_darwin_arm64.tar.gz"
      sha256 "f3c8eeeef2b4573614f35e218e040536942c3c5ba01477a2836bcbaaede60d19"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.63.0/halo_darwin_amd64.tar.gz"
      sha256 "d428e7c40a1756800e56f9902450ceccfbc883bda5d293292d99dc9bbd908189"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.63.0/halo_linux_arm64.tar.gz"
      sha256 "8461bc1634bd44e8e2ee1954b869131eb7a91b6a98ea9b3ece6b5e3522d92860"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.63.0/halo_linux_amd64.tar.gz"
      sha256 "60ef3f780eb43d088b7afb0d5bc8eecd5be26c5d6a190a1cf8b5fdcaec9d5ee3"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
