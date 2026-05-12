class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.1.10"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.10/halo_darwin_arm64.tar.gz"
      sha256 "421056f68eb2d04d4a3f890339636c823d1aec1047b74cae3bb78c05adb70b83"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.10/halo_darwin_amd64.tar.gz"
      sha256 "8b78202a8612ce10c8067fbc564e99c939f19662f65d1e4da1f579db03864e70"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.10/halo_linux_arm64.tar.gz"
      sha256 "94202ff49f62d0f10f943c875e43748a041fcb6b1df8684255e34f11fda45614"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.10/halo_linux_amd64.tar.gz"
      sha256 "72fa83aca518091f6955ac657747ebc5573937b30a951cb9c66bca50e3ca34d7"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
