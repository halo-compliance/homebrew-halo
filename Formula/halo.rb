class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.6.1"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.1/halo_darwin_arm64.tar.gz"
      sha256 "4b0a1e909ed3505983d0c56cc9780910f684dd66a5a52ecaad871f0d1a019368"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.1/halo_darwin_amd64.tar.gz"
      sha256 "d5fc28a8a1b41333acdb964118fc74908a47ca5239d02a2ba0ce29d385a73410"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.1/halo_linux_arm64.tar.gz"
      sha256 "dbdb1175c76c524ce5cef58da4ba472bfbc4b77367e63f84edeef5ac8b7484df"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.1/halo_linux_amd64.tar.gz"
      sha256 "99e5aaa6c7a85fc820d507d2ffd77a7a5d8a2740996eed66b51c1c0f4b79d70a"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
