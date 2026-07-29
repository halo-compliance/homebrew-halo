class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.61.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.61.0/halo_darwin_arm64.tar.gz"
      sha256 "9edaaab65fc2510c1e88df541e317c53aeb33d0a017c2389f4ddd44fbf7a310c"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.61.0/halo_darwin_amd64.tar.gz"
      sha256 "b590fad810a4139f8f2e9cd434e09fc2ed13832c5219bdc6e9d923efa830caaf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.61.0/halo_linux_arm64.tar.gz"
      sha256 "85612bbabbcb7c1146bb8fb1ee354d823e2316098a219e59b396605947da3547"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.61.0/halo_linux_amd64.tar.gz"
      sha256 "0bb8252500a41211910021b136489757268326e63806e1ca55d747b73c6434b2"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
