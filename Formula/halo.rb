class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.68.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.68.0/halo_darwin_arm64.tar.gz"
      sha256 "8ee94849b4ff5e85f1d3a69aae2f08bc48cb3380398f1b9a400614b2faf619a0"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.68.0/halo_darwin_amd64.tar.gz"
      sha256 "e138f9677425d3a728141c6451e3c5568f2b31ff853ec9c0cd77a90f1049aae7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.68.0/halo_linux_arm64.tar.gz"
      sha256 "fd391589bb30fd95bb0ebe279e6dc1b40baaafffc577b14002d8c32dc9df2ae0"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.68.0/halo_linux_amd64.tar.gz"
      sha256 "e5b1f8bf4044c9eba507848d9a5a3145831c8d5c4088336f0511b5293a9d0eee"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
