class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.2.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.2.0/halo_darwin_arm64.tar.gz"
      sha256 "5e25df234150b98661217661a2174b0b8d0f0ce9611e0f97c7355ccbe9d00289"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.2.0/halo_darwin_amd64.tar.gz"
      sha256 "3ea0ce6311ee1b3312eea378c3e72bf9e200903d55d9b41c62f2f990a6d544c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.2.0/halo_linux_arm64.tar.gz"
      sha256 "299ae1ebe54250b82c0f0c5d81267907f56975f06db68230e33999c6629f537a"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.2.0/halo_linux_amd64.tar.gz"
      sha256 "6cad25cca1060e8aee28175e3ef063ead983cacfa8ae0458c2b327bb69150b1f"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
