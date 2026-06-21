class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.49.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.49.0/halo_darwin_arm64.tar.gz"
      sha256 "859daf5b9c4123c9bbab2e5c99201eefc12cb8db506cbdfc2daf1c8abbf9d1b8"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.49.0/halo_darwin_amd64.tar.gz"
      sha256 "4f6185012004a515a5be792ae190843cd79c0d9da12d81d1f7444e87c22da376"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.49.0/halo_linux_arm64.tar.gz"
      sha256 "3a55c91fc69d94cd9510b533269f59846b89a70d75687e03dfc4868ef692a277"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.49.0/halo_linux_amd64.tar.gz"
      sha256 "8ce44e9c32ab02e22e67f4d8f2ad014a6ac2b084952afde4c793122c90f0b23e"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
