class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.39.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.39.0/halo_darwin_arm64.tar.gz"
      sha256 "e19394009728a48df83fb210161841b37b1b40a215c4363733cce2380e49a2d2"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.39.0/halo_darwin_amd64.tar.gz"
      sha256 "71b383308b39348db1a32b7b6e4c7d36ec3f85f9a82242d4062bc425f5fa7e51"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.39.0/halo_linux_arm64.tar.gz"
      sha256 "a3e0f91feb1eea58b22d2a572e2ca4c559bc4787dbcff2e0deec6105b3c0e30f"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.39.0/halo_linux_amd64.tar.gz"
      sha256 "bea626ec415ba450382bef2e43c5ca4b788a08b7b50e511f8ec994aaff14cf86"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
