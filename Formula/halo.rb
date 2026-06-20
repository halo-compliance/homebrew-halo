class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.43.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.43.0/halo_darwin_arm64.tar.gz"
      sha256 "1c2cc296a30bcd3317be7d02b4cf7dae41cbfe734a2c671263f24a97ef727aa3"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.43.0/halo_darwin_amd64.tar.gz"
      sha256 "54559f43ce0370f77416e7fcea85b082b9fecb638b25dfb401c11712a96b52d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.43.0/halo_linux_arm64.tar.gz"
      sha256 "0948264c9a8cd015d8d5e36e5bc5928cc0421eaa6e3d0bcbd3183b9b82375903"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.43.0/halo_linux_amd64.tar.gz"
      sha256 "90af336d42e0b61d9bd5f33498ff8d1079f1e688afd3712412898530ed165e88"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
