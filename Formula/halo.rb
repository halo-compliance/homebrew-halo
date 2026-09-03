class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.67.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.67.0/halo_darwin_arm64.tar.gz"
      sha256 "1a1174375ca62d5cc1c05ea4e90083dea7a1d352ef07ec6919377310efd00c73"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.67.0/halo_darwin_amd64.tar.gz"
      sha256 "4667eba54c92d423b59c96db4b8941f219b3309c60188e624768e404449937a2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.67.0/halo_linux_arm64.tar.gz"
      sha256 "e62676b14549ecfb3accffe4980b983ce0a02ed8506e4c5292ad7042c7d1de82"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.67.0/halo_linux_amd64.tar.gz"
      sha256 "e5bed330e05abacf9d32aa958c73cf7c0b4b26f671c9ec289b63689ee213bbb8"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
