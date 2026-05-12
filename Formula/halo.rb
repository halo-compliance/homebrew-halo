class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.1.1"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.1/halo_darwin_arm64.tar.gz"
      sha256 "7b7d00b2fb62a11718850f52de92ffc7240e5dc10cdabfa9b8d18e76e7d33b8d"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.1/halo_darwin_amd64.tar.gz"
      sha256 "3c1ab5df2b94c2d12987dddcd8b745283c0ec50c71992e1bf8c207f24debc771"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.1/halo_linux_arm64.tar.gz"
      sha256 "11699dc2e1ff3ae467acf9c8020e1bf27722619e7be8d19797caecf8949f135c"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.1/halo_linux_amd64.tar.gz"
      sha256 "4df098cf754a0d08234c5ff658a548554e1b197f18b3f62d8917f1411654fed2"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
