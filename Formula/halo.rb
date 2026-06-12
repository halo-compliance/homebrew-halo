class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.31.1"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.31.1/halo_darwin_arm64.tar.gz"
      sha256 "536441f3b9e2e241fff844943c6743d823d9befbb8e3951a738b3c454cb6729f"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.31.1/halo_darwin_amd64.tar.gz"
      sha256 "5b7e71b150122dbbe5cfaeb7e687a7c0beaed8612f58e8db4e3dc5254f815470"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.31.1/halo_linux_arm64.tar.gz"
      sha256 "38c968e495f4a23bd69c3ad3d1d01cbf8fb2c927ba6d38e7b4afc26ccf91b2bf"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.31.1/halo_linux_amd64.tar.gz"
      sha256 "fe018b9c3389f0be874c483cfa89dfa9c14ced96bcbac08e246b05f220598518"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
