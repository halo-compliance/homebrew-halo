class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.1.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.0/halo_darwin_arm64.tar.gz"
      sha256 "93dc1c338fde72030d9db4689f20849b90f7622b14ba8c6768c7350233f5fdf7"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.0/halo_darwin_amd64.tar.gz"
      sha256 "afba41b8c57b304e3a0e8142d258e0adf2962d989ec2e22dcb43f7248b08856d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.0/halo_linux_arm64.tar.gz"
      sha256 "581c1a245c09d0ac44f6e757760ce02a9a1eec7d7e30a0e5b7570b56071ecbf6"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.0/halo_linux_amd64.tar.gz"
      sha256 "786bd333b8b2d73a855ca749be7d78216bb33225b12e8528f66ed60148c5e450"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
