class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.31.2"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.31.2/halo_darwin_arm64.tar.gz"
      sha256 "db34fe9bfb9d6a1f8fe5f349c19d35467c54f1c06811a62eef06ded5cc2937c1"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.31.2/halo_darwin_amd64.tar.gz"
      sha256 "0a4063d0c6cdde160ec8c6d05e8e2018da559fe4ec9d3a22b7289eceff0c4c94"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.31.2/halo_linux_arm64.tar.gz"
      sha256 "b8faee6e7aa73c24904a7ae30026ee3c891a43c072e9f7eb705b32846c06f8dc"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.31.2/halo_linux_amd64.tar.gz"
      sha256 "bb170eacc778b4fb3b1a11038534d8a0b31ceb3d7e9c2806e019f5c828058317"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
