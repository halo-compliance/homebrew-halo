class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.28.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.28.0/halo_darwin_arm64.tar.gz"
      sha256 "e80fb21880493c024dde088791ca5ff3b5dfb96a37b8288dd4776aa042be64dd"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.28.0/halo_darwin_amd64.tar.gz"
      sha256 "0eea2c67a3ce1f69d0c6b4828db4972708022a734a69518df92b6d4584da352a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.28.0/halo_linux_arm64.tar.gz"
      sha256 "b038417610044076cd864b3a69ea620cde572919990b878ad47d2a078349ea51"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.28.0/halo_linux_amd64.tar.gz"
      sha256 "ef1e0ff39e96693f7fb0a101001429e908bd11d67ac7bbbca01f9da82c0c8fc8"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
