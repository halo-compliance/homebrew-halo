class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.53.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.53.0/halo_darwin_arm64.tar.gz"
      sha256 "7baa678ae4b8eb55977521136782d94b20eddf90669b11604b3bd214ab67a624"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.53.0/halo_darwin_amd64.tar.gz"
      sha256 "55588dbf3507baae8076d25381a2c17629d1b1dd0afcfc4aaed4445022e8e0ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.53.0/halo_linux_arm64.tar.gz"
      sha256 "1f52980220ecd9d685fb12c1aabda6dfb17d8df65d8d292ba49ca211f3ccd8ac"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.53.0/halo_linux_amd64.tar.gz"
      sha256 "8e81ebb721b9e48c5de4e6433537d34317ebe0b47aedd6728144ac1b589419d7"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
