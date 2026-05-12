class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.1.6"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.6/halo_darwin_arm64.tar.gz"
      sha256 "ee72d997de409bd686129076a0fa6a7c7d43a570f64ed967b1bce3aae60e50d6"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.6/halo_darwin_amd64.tar.gz"
      sha256 "1690c9a8f526fe824b5415eeec0a52c091b5d7e7ddef18b8b69e5bd15421ff0a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.6/halo_linux_arm64.tar.gz"
      sha256 "1771d72aeea064e4d405824d1d9dcf3d1df08c4b16beaaf59e0d5485b8bc65a2"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.6/halo_linux_amd64.tar.gz"
      sha256 "0ba5b5d8a9554d1ed3c2291d499f365bcefd2049c97b05bdb4cef95ea92170b8"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
