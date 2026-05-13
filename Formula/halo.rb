class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.3.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.3.0/halo_darwin_arm64.tar.gz"
      sha256 "f7ef59b2ba89cadc54659a1124823b352e43a74a9b16e2cc097ba57bb74bcaa8"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.3.0/halo_darwin_amd64.tar.gz"
      sha256 "d513bf098d8e4b74ba577786b55b5e9b38d6eb88f8079fbee5b1cab32b9eaf5d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.3.0/halo_linux_arm64.tar.gz"
      sha256 "e13d4d2635dc8f743b86bfb4ce2f155be5ce0c100a35dd9ee870d1aea2cfef4f"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.3.0/halo_linux_amd64.tar.gz"
      sha256 "e5f2d82cad5418d96d36f974026470ce2d5233d0bcd091089d770f1460b9fa52"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
