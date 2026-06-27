class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.58.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.58.0/halo_darwin_arm64.tar.gz"
      sha256 "df1c0182d735782a81bd5f7d5336a7f32c7322afe5c667c8829588717f4569e5"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.58.0/halo_darwin_amd64.tar.gz"
      sha256 "5b84240e62a40f5d2787a37765be406c042212733cab4b86f8c2a53e2c87aab9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.58.0/halo_linux_arm64.tar.gz"
      sha256 "24cab7df94490b6005d5330981184770ca14592e309605cdf9bf931abb1d86a3"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.58.0/halo_linux_amd64.tar.gz"
      sha256 "393980f0eb2b5c86d44b016cdb1a0c946de9c34efb59069377b965826351eeab"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
