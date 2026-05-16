class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.6.7"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.7/halo_darwin_arm64.tar.gz"
      sha256 "da2083c094372593768ca8329fe574cbae881762ccab80e81ae33360e1fbd355"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.7/halo_darwin_amd64.tar.gz"
      sha256 "ea94fc950d9f72962e1a1b55d059fe79ca45a6a5a0c9886d5e1d31eb4f84b4d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.7/halo_linux_arm64.tar.gz"
      sha256 "71c84e7f4c7fe841286eed7d40626734e9143a21ccc0359b82b61cf195c7b181"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.7/halo_linux_amd64.tar.gz"
      sha256 "564b2e80d3c6ed3de07da584a8db6f963ec90eb2f4c7df469bd16f9233054460"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
