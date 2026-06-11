class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.26.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.26.0/halo_darwin_arm64.tar.gz"
      sha256 "b66408103d57a27bbd76cb4b98db24862528966264048882958da6820cf712a2"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.26.0/halo_darwin_amd64.tar.gz"
      sha256 "1d1d499283f6cfebb165db78652db4d0df699207973e7dacdc36f03f490ad575"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.26.0/halo_linux_arm64.tar.gz"
      sha256 "f286b5c0dbd0cd2b27f0d6e56a73a5ff01c77793f5d1044f131fb1d4efa73d4d"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.26.0/halo_linux_amd64.tar.gz"
      sha256 "819e9ebf8e11286113d2256d78fe91b69f584a51649e7d0da2ec8acfd04e2809"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
