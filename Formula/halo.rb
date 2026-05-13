class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.2.3"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.2.3/halo_darwin_arm64.tar.gz"
      sha256 "1c5a3dd1ac424f8e0070cd806c55f5d394abd52dc2a4557a38ef1a50aa6f7684"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.2.3/halo_darwin_amd64.tar.gz"
      sha256 "1b89ce81d86376284fc54f63fab450f94c45fd1bf27ee2837c7441aa2f614da1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.2.3/halo_linux_arm64.tar.gz"
      sha256 "13604e107255eb5a2a8c18464462c15baaf69e4a162ddcb24f30cbd2153e536a"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.2.3/halo_linux_amd64.tar.gz"
      sha256 "68526e3f090d2d32516aef51c64304886af752eb58684da57bcf4d72fd0fb116"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
