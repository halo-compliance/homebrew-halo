class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.65.1"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.65.1/halo_darwin_arm64.tar.gz"
      sha256 "08bf1ec735dee9ce4bf87913e60e7b2844f619e10fa2a3da2c13d7afdde91b6d"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.65.1/halo_darwin_amd64.tar.gz"
      sha256 "b022aba2ed2be5b1d721be4da6ad08860d114d8bffa7fea8e24afc49e3f34d00"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.65.1/halo_linux_arm64.tar.gz"
      sha256 "801bca2c9d1c3c659dfd5012131677ca645a990a7e78ece10d3cbf2bca271869"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.65.1/halo_linux_amd64.tar.gz"
      sha256 "6f94527e2af11373c0a5cdf240cb4aebf79b56451461b7fee5358476854c36d1"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
