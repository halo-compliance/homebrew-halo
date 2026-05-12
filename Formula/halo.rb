class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.1.4"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.4/halo_darwin_arm64.tar.gz"
      sha256 "a12a29060419a2f0bfd08488a3a9df12006a90c3533532bb356a4179dba0eb1f"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.4/halo_darwin_amd64.tar.gz"
      sha256 "c0282430bb0b9fb7e7950b4201198ea3335ae770d2575a5dced2f9e83ecf0f52"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.4/halo_linux_arm64.tar.gz"
      sha256 "67b41bceb44d3940f86ad595c45720cc2a8f56ad35806b60d2e832501e7b64bb"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.4/halo_linux_amd64.tar.gz"
      sha256 "a4eb1a89bc0a025fc9e5c87d9859055b85ab7abc9b51f7145753d0636672ead3"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
