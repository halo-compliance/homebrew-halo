class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.5.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.5.0/halo_darwin_arm64.tar.gz"
      sha256 "dd8c563d21c85876d534fcd70192663298da866f9679bd3d1560b4ed1e2b7f19"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.5.0/halo_darwin_amd64.tar.gz"
      sha256 "27732a9374511a18c2f1471f6b30e90bca6767b08554bb9cedd6d718fdc23fc6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.5.0/halo_linux_arm64.tar.gz"
      sha256 "3ace772026b2cefde74394aa47a56cb2ace60789ee7717a7dab142ffb3696d6e"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.5.0/halo_linux_amd64.tar.gz"
      sha256 "5f14e1bc8f0218ea84436bb74867454ed73f964874ede1d698706e33cb389b46"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
