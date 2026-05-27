class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.12.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.12.0/halo_darwin_arm64.tar.gz"
      sha256 "d814b31977b9fbd941f0f21f11bfd2ae7a7b36bbbf545eeb9e52cb3f009f4698"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.12.0/halo_darwin_amd64.tar.gz"
      sha256 "6831b26b41cbb2230494dce538c68becbe261945755aeee715ac7d3bdd628c4a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.12.0/halo_linux_arm64.tar.gz"
      sha256 "d473a7b38b5914355a5154fa6f85992af15ecb80d61e2950e27c401d57e86fd6"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.12.0/halo_linux_amd64.tar.gz"
      sha256 "7f140324cbee020bef9b0e118b64d9bc04774a0e2b4ed935fca2f6cbc309fd73"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
