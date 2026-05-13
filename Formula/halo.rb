class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.2.2"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.2.2/halo_darwin_arm64.tar.gz"
      sha256 "abb40a0ca6a2bc5ce2923116ac73cbb2fc9ef132cbc397bc05634231ee83c16f"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.2.2/halo_darwin_amd64.tar.gz"
      sha256 "cd161f53894991dddc15bacbed0ce902fbe81ee2cfcbeda9a7c9fa8844291a7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.2.2/halo_linux_arm64.tar.gz"
      sha256 "40e047fc7e1dca2b46cc594f510674327af215b0ceb032e8be4753c94ae5fbf5"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.2.2/halo_linux_amd64.tar.gz"
      sha256 "41e5285617f0a34818bccf3a68a10220d3f5f56d7b85c44d6a8682bc886886af"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
