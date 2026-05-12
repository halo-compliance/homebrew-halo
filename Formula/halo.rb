class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.1.11"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.11/halo_darwin_arm64.tar.gz"
      sha256 "6cd256d56c8ee3b2ea8c48035e198601e9fa282c0ddc95cbee796b617bd70b15"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.11/halo_darwin_amd64.tar.gz"
      sha256 "39661bf25182a676d10351d840bde8da65d9fa27a96344cb314fe9a4e010c539"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.11/halo_linux_arm64.tar.gz"
      sha256 "79aa9ea2e44d4062df2ccb30cb56543412c69801293f0867345a9a9897a2eb10"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.11/halo_linux_amd64.tar.gz"
      sha256 "6dff4d67002688751a0fee16b25b34e71870a7928b3a96d5fa56cbade468ae64"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
