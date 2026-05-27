class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.11.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.11.0/halo_darwin_arm64.tar.gz"
      sha256 "ec7358289e47452d22d0fc96eda6a2e0926dee4d81464cb56c9fdbaca9f2dad6"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.11.0/halo_darwin_amd64.tar.gz"
      sha256 "a7dc6b4f4f225291d2f8cbbb2c717d939be26b00e215997b9f3b9e695f7e2c9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.11.0/halo_linux_arm64.tar.gz"
      sha256 "328950339300ebcdc4f1aaf1db7f2ce699b7144e1ce9d8143665750f8c5a39bd"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.11.0/halo_linux_amd64.tar.gz"
      sha256 "1232b380fe047e0f87f3ee4e8434c097d9a1c6d2fa2e9885c96eff144b749040"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
