class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.64.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.64.0/halo_darwin_arm64.tar.gz"
      sha256 "25dc466548a07b2aa27223585d2ade5ea3efd6a37776b74652570da7146dc3f2"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.64.0/halo_darwin_amd64.tar.gz"
      sha256 "eb05b7631a075000e352b3cc919cfd521a8fdd8251cfcc17ab2f8e6defd477b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.64.0/halo_linux_arm64.tar.gz"
      sha256 "f6cfc1b984e4c10d6f037a4fadd515b354fd04cf6084c69276669631570eddd2"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.64.0/halo_linux_amd64.tar.gz"
      sha256 "5e74ade8012e5cbb5f7262bf399a96bd71a410fd2a1fa09a185504144565c380"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
