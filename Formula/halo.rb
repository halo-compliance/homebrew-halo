class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.1.7"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.7/halo_darwin_arm64.tar.gz"
      sha256 "9ab969cc57f93ad5be2ecb68ca61760658544e29bcc896d0fc94f8d52bced267"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.7/halo_darwin_amd64.tar.gz"
      sha256 "588b9a07aa545c3c0525713b1765d527299a8e8816b75846847373744b89d492"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.7/halo_linux_arm64.tar.gz"
      sha256 "425551767aa75b91a3b2ffdf0f26795f8582afaeb7cb72dce82f654bbc0b5cdf"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.7/halo_linux_amd64.tar.gz"
      sha256 "ae142a10c53a92c4d7f97e8fce1bb0c2817a5561c20daa03eb95766224c209b8"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
