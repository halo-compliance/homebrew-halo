class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.6.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.0/halo_darwin_arm64.tar.gz"
      sha256 "8908a197bcc21eba4730674a81af12b39af87975cc0ecf6492003516d9df6a97"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.0/halo_darwin_amd64.tar.gz"
      sha256 "ed56a69a01885c29c9032186d9831f57297c6612f176fc4e5458430db49cc196"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.0/halo_linux_arm64.tar.gz"
      sha256 "d917a8fcca0629af2f4a197fb90b4b1b35da087138dcdd6c2c32d4894b69b288"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.0/halo_linux_amd64.tar.gz"
      sha256 "ae7d179d33575c2be06bf5b9290fe53c6fddd1501cb4f7b1934f9cff411ac75a"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
