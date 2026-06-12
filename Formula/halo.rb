class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.30.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.30.0/halo_darwin_arm64.tar.gz"
      sha256 "4e5ed0a4975ea02fee2eb36bf3e24c715f1a32a8634026f05176488bdb2218d7"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.30.0/halo_darwin_amd64.tar.gz"
      sha256 "194f3222be3c9bd27267f3f8d5617661967e3ef609b550bb096d2d6af9176532"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.30.0/halo_linux_arm64.tar.gz"
      sha256 "2c8f24c4363c07735bfb11a4c14e7228af0eff7e382f76706e50cad86e4b5afa"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.30.0/halo_linux_amd64.tar.gz"
      sha256 "4ea41a07dd4e9f2f2c658535960719a1f6e5724403556dfe8147ee010eb77e31"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
