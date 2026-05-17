class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.7.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.7.0/halo_darwin_arm64.tar.gz"
      sha256 "7736f71267f09bf01a1236d7f898dd279e8c10fb858d7201d052e1623bff6b4a"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.7.0/halo_darwin_amd64.tar.gz"
      sha256 "92be103fdd0faa8346cf730a2bb80b2b39321e2c0eedc7373c380eee6ca94670"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.7.0/halo_linux_arm64.tar.gz"
      sha256 "a6d7e724005d4b4733079402d43740f6430b761bce2a4c23bc0bbeecfb968410"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.7.0/halo_linux_amd64.tar.gz"
      sha256 "0cbcc978f0b0d9885a65c79cd6465004fd74c04016ae443af967a8cb461f4050"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
