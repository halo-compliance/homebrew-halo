class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.6.4"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.4/halo_darwin_arm64.tar.gz"
      sha256 "652d397e5a5f8c3f38dc6db9c25b175e14e48c59be359ffceaf5a1e6cbd5706a"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.4/halo_darwin_amd64.tar.gz"
      sha256 "8d27b0efe49fd0f659879b671afcbb0aadb4045f1bacc1d4dd1f1c0536847624"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.4/halo_linux_arm64.tar.gz"
      sha256 "dbfdb67b20e19f82b91b05f062dc8112f4a350248f84dac2deaee5b1f82ed508"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.4/halo_linux_amd64.tar.gz"
      sha256 "7ba8205f0509181a1f6edb941fc7da855aaec693114cb72937e77bddbdeb6ab7"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
