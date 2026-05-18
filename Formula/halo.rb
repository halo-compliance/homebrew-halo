class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.9.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.9.0/halo_darwin_arm64.tar.gz"
      sha256 "b0512160487529b726d10f4949a69fcafbf25447d8711fd70e62c59ef552f530"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.9.0/halo_darwin_amd64.tar.gz"
      sha256 "9bee40e7d973a058ef7d43a44c92082ac9ea55b495efe46ef4d28022b75af763"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.9.0/halo_linux_arm64.tar.gz"
      sha256 "5627ddfac3cdbdb9da91a0615642231d5ea01b80ff6658355963d52d8eadc3b3"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.9.0/halo_linux_amd64.tar.gz"
      sha256 "40957db68a9343c21b53c1eb6d982e4ece3124458c95e526d9d338e56c899489"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
