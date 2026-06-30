class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.59.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.59.0/halo_darwin_arm64.tar.gz"
      sha256 "0945f547567235c1cc9a870f89a93cfa59730e915ab7ebb13c93bc9e5134a412"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.59.0/halo_darwin_amd64.tar.gz"
      sha256 "9171940267d50e6e81778ae9b92521abdc9ea38683d4a2ae21962652289adf5b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.59.0/halo_linux_arm64.tar.gz"
      sha256 "06bf8e40c8ef403b81d5c65894eb842df06b84d88db573d5bd5cb8a1b82f0638"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.59.0/halo_linux_amd64.tar.gz"
      sha256 "f8f7ab62624db4eb0e532d11e36e0fb7bb37c410d583bdc753cb0215b239b5a6"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
