class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.1.2"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.2/halo_darwin_arm64.tar.gz"
      sha256 "b90862cdd83f1464a2a7d0c01697b1179bf4b33c83c464a7e9dafaeb30eb1334"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.2/halo_darwin_amd64.tar.gz"
      sha256 "687f822e38a63fee16999c49cf620a9590e3b1ca3c444be9f5340a4b35ee19ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.2/halo_linux_arm64.tar.gz"
      sha256 "a91c80a1fa28d41098bdd2f38ce73775f1bf7324c7d488ef9efd8adac4b4330c"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.2/halo_linux_amd64.tar.gz"
      sha256 "f08b7b7f804f1d7f5192672e30ca8f0bfbaf0c049acff7c1eebfbfc5d758c395"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
