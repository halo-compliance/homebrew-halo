class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.40.1"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.40.1/halo_darwin_arm64.tar.gz"
      sha256 "078eac37f4aad738efb5688494e1b43359f2928b1dd4a460b3e9e8b6068d8100"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.40.1/halo_darwin_amd64.tar.gz"
      sha256 "b15fc948c8ca1a3e1535a5b2c9a87655b56dee084e0c0b3758e70ff3a169e724"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.40.1/halo_linux_arm64.tar.gz"
      sha256 "28c256555b88c1f1b1903de4617eaa99cd46b3c5075ccd9e9aca36f277745d06"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.40.1/halo_linux_amd64.tar.gz"
      sha256 "0dd122a821e022891d877c42d5a5b018ff422822c334f4bff9953d3a289d7cb2"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
