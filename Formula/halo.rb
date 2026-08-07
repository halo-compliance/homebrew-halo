class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.62.3"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.62.3/halo_darwin_arm64.tar.gz"
      sha256 "8683bfd78b2d5065dc5a556d5b5f06384f82ef8e64c4ad28a1af66c26cd6a479"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.62.3/halo_darwin_amd64.tar.gz"
      sha256 "b235361cb00fe9309c55ce58c97979e9cafffc134f488f4111470580efe7542f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.62.3/halo_linux_arm64.tar.gz"
      sha256 "0643027117896e64f3882c0e1c13318df737a3c9b539f3695e7daac6fb5497a5"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.62.3/halo_linux_amd64.tar.gz"
      sha256 "cee9d924b2354a8c4c41868984b8418e8a0a13dc2249569f3f7e3f66179f5b4b"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
