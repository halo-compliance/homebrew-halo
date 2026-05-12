class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.1.5"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.5/halo_darwin_arm64.tar.gz"
      sha256 "a87de794a3673b7381e514ee541bf6d40007b3cd93d7ab79e535997730f8c826"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.5/halo_darwin_amd64.tar.gz"
      sha256 "e882326cc64672214c3099fb92bdf5b5740d9574814d624f59cb9a0e6a06e145"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.5/halo_linux_arm64.tar.gz"
      sha256 "9951c4203eb618bc1cb4001daf20890f00b21856aee5812e1a3a70654b999817"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.5/halo_linux_amd64.tar.gz"
      sha256 "0698796f3861ea074c23161849ff6e41a1f1f6db0a27f0c355b15b4fa302c2d3"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
