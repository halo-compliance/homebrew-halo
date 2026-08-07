class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.62.4"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.62.4/halo_darwin_arm64.tar.gz"
      sha256 "b702e138348037398b3e0807934f39998a005d5f6fb135df90a1ac25bb244a9b"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.62.4/halo_darwin_amd64.tar.gz"
      sha256 "f95533fd26336dbdb3a6ad9c51f84a828a646b9411b5ebbc70dec9ba99b5d9a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.62.4/halo_linux_arm64.tar.gz"
      sha256 "a95a7c0b080323ec184f18e37418c7ffaeb27632332ff572152ecd0b55437c71"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.62.4/halo_linux_amd64.tar.gz"
      sha256 "8432093d56fecdec528afd965f0e2c49fa49dfc1fdfa6ac5623c1c998e39675b"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
