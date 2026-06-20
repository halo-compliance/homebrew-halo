class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.45.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.45.0/halo_darwin_arm64.tar.gz"
      sha256 "1339a9a796ccb7f4e5e97d1c3d0864ff1ecfad90c72d288913e256996c2f5766"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.45.0/halo_darwin_amd64.tar.gz"
      sha256 "8d3c93f9bcda640ff20e9db53603e3aff51dfe9a7eb126c5c0ce0a2c11611f72"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.45.0/halo_linux_arm64.tar.gz"
      sha256 "88e8f2ecf6956d6bb98851e07537fadceb6cbd7387f2d0d9a589301219378c49"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.45.0/halo_linux_amd64.tar.gz"
      sha256 "6948b8f3eabdc2b340328b04f5693b5b60ddba2acd57b418c4aa43571edf35ae"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
