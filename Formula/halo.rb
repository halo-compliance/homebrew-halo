class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.29.1"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.29.1/halo_darwin_arm64.tar.gz"
      sha256 "29a95f99cf88a861899d910ba98074187db466ce23a046724ffaba9843bbcf16"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.29.1/halo_darwin_amd64.tar.gz"
      sha256 "e7391b4cc589f57a441e574f3aa049eb8217b090ef429dc33cb809b2e5d574ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.29.1/halo_linux_arm64.tar.gz"
      sha256 "62bdccf6e73eea175c676a800c3df461923f43c366012394eea8752a2490701e"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.29.1/halo_linux_amd64.tar.gz"
      sha256 "fae902cf60f03886825dc684b2a84a8c0c2a6819e345da5789f1adf2fa6bac50"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
