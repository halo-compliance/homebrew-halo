class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.38.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.38.0/halo_darwin_arm64.tar.gz"
      sha256 "cac298748283360a26d2646cfa18422365b67f137f3840da59bafb0b4a41c7a8"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.38.0/halo_darwin_amd64.tar.gz"
      sha256 "57e50dd97006d0bc84edef609db791d0ecf0297b64d980fa185dbf4cef3aba40"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.38.0/halo_linux_arm64.tar.gz"
      sha256 "e60d1f2cfdaca9a391a86abc40bcf6cbd346dfa6c1d5883df159e2c052c24487"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.38.0/halo_linux_amd64.tar.gz"
      sha256 "d3dd6a229227f710bfca793b01993969cd0362dff7d63cf1e5b54ada129f4219"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
