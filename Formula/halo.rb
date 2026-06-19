class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.36.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.36.0/halo_darwin_arm64.tar.gz"
      sha256 "eb626156353c124357bb711a71df696cbe6f27b4968f6dc363a32f157ae6e42d"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.36.0/halo_darwin_amd64.tar.gz"
      sha256 "1fd3223d5d18b546fa678b3f3747fae4503f0e19f1dfcd6635a36903aabdeb35"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.36.0/halo_linux_arm64.tar.gz"
      sha256 "c4eb633eb5bb9ef08ff1aac99b1e4eaa7afca58b79ccac4900b2969c13cee497"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.36.0/halo_linux_amd64.tar.gz"
      sha256 "64834a4b01569bdd7d315510dcb7fd783386bf511e31c42cbce96d23b085b50f"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
