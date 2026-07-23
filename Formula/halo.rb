class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.60.1"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.60.1/halo_darwin_arm64.tar.gz"
      sha256 "aab7ded6f7835de91be059eafe446236974a884030e2103db0d2be70541f1cd2"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.60.1/halo_darwin_amd64.tar.gz"
      sha256 "94d97b1b42f8fdc46b85b5168080f84ce31836a563c5b4e1ea021d9a7869fd95"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.60.1/halo_linux_arm64.tar.gz"
      sha256 "0fe0cc66c3c370094f902ae62dbac58b96f27e436c4390078168d3e9b76b3c65"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.60.1/halo_linux_amd64.tar.gz"
      sha256 "568402fdee7d92b80eca3ff00947e9418aa60e4194e2d8391d16803c82aa9a3c"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
