class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.14.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.14.0/halo_darwin_arm64.tar.gz"
      sha256 "a276fb9ed627cbc3ed19f9ce1c92633eb4018e4ca8abec6137d00a32016ac3ec"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.14.0/halo_darwin_amd64.tar.gz"
      sha256 "65ae32242b835fa5b893e118736cebfca4631fcd513f7f22f5d196dbc91f2723"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.14.0/halo_linux_arm64.tar.gz"
      sha256 "5bd848bcd0879c0a25fd2c62fda445fd9bdae3799f0d500907cc23373873c51e"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.14.0/halo_linux_amd64.tar.gz"
      sha256 "e6e49587e2c0fbe8cbe70e220e1246357420c7fd66d9ca4ff88f77f31c62edcc"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
