class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.62.5"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.62.5/halo_darwin_arm64.tar.gz"
      sha256 "9bdbae87d2f5659a7a2e0bf8118f148d0bd83f70e9ad02ea3bd7d1b6dfb92c6f"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.62.5/halo_darwin_amd64.tar.gz"
      sha256 "af05f542acba9116b0177be11df968cb04b7ddc3fa42300377e297658e6097e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.62.5/halo_linux_arm64.tar.gz"
      sha256 "4b95bd1bf4745dd24493266cfa9f5116d64d28dc72ac1dc49d81a81164736e85"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.62.5/halo_linux_amd64.tar.gz"
      sha256 "61a11f5aaf2ec3442362bbbe36ce294bb42f99a3af9d2f231de701bc09838a40"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
