class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.25.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.25.0/halo_darwin_arm64.tar.gz"
      sha256 "db8a28c7a7dbdeb58b2251b4b33dcfdc399b34379c5fa224d569b87661bd15d1"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.25.0/halo_darwin_amd64.tar.gz"
      sha256 "d5f3628558d40350561333957188bef832259fbec9c41b248dcf4d60fe9d7991"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.25.0/halo_linux_arm64.tar.gz"
      sha256 "9844f07a6900f1e836d01f79fce711b71591a2524f9cbacad1eb786f5b201c80"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.25.0/halo_linux_amd64.tar.gz"
      sha256 "85a2b2bb25afbe5773a9bcaa30f95863359c26aa9d54fd214d4657dcc83a7486"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
