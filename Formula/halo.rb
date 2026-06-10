class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.24.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.24.0/halo_darwin_arm64.tar.gz"
      sha256 "79bb6fd5b0f0cc21c58707bcef10b849dc88574b97f736e9a4444c8ba4b58f79"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.24.0/halo_darwin_amd64.tar.gz"
      sha256 "57810017e48719ea94a6c971dd89ec8aebb99cc931b51f330989ccd7acf4c450"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.24.0/halo_linux_arm64.tar.gz"
      sha256 "83a3bdca8c1981b194eee35a509cac39e3a1ec46afb5cb393aa3696c1fa8fae1"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.24.0/halo_linux_amd64.tar.gz"
      sha256 "0dd7bda0bc9af99c271be4a75a6741260eb52bc53766332d8eafaa081f845c28"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
