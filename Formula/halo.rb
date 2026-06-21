class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.57.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.57.0/halo_darwin_arm64.tar.gz"
      sha256 "5fcd3a79a00be439847080ab7aa7763d74fb238660e7bab79cd59781da11e89a"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.57.0/halo_darwin_amd64.tar.gz"
      sha256 "14676cc01ab10b125d2923c6991fca6f75ed25a680baffc56077d0270d7b56ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.57.0/halo_linux_arm64.tar.gz"
      sha256 "ce5671f892b9eb7c1fc3ecdfbd977566969ab97b85ca8b16e361de156be553f9"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.57.0/halo_linux_amd64.tar.gz"
      sha256 "41004e47d772b262b4e2924ad84e2a8df54ad30a5ab2ef5e83c0cfb2e867d19e"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
