class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.1.8"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.8/halo_darwin_arm64.tar.gz"
      sha256 "23c59812b7312e468dfc38bfbb9fe5bd1122429831c06e12392a513097958dc2"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.8/halo_darwin_amd64.tar.gz"
      sha256 "01aa6e4934200351f327ceecf17eea262afdb24f279b5962599933710a8a9465"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.8/halo_linux_arm64.tar.gz"
      sha256 "663714cb89870cd7b9761e9ebbc007ccdc5195749a8a20ead02e3b4cbb1ae9d5"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.8/halo_linux_amd64.tar.gz"
      sha256 "ec386da678807f3e11ab268455790d2ff6e8306675663f1c0d28d3030eeff9b7"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
