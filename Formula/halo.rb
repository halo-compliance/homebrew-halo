class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.62.2"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.62.2/halo_darwin_arm64.tar.gz"
      sha256 "7c797e882f6ad2ec32d67dea3d77b571ba2c1d083891d765670a8bf5146d22cf"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.62.2/halo_darwin_amd64.tar.gz"
      sha256 "19bce7b7cb0640d4471b755d0b96d23560fdf9e1cbb8bf0d57aff443e58bb6e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.62.2/halo_linux_arm64.tar.gz"
      sha256 "80ba1c32a13aa69fb615c535e158bf77a1830fc07856ef9c4af1624fc0379b20"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.62.2/halo_linux_amd64.tar.gz"
      sha256 "c092a38975d0120b9541a0effe7ab4f65f9753a278e01d587b7f244499b019c2"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
