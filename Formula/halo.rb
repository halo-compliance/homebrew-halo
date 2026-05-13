class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.4.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.4.0/halo_darwin_arm64.tar.gz"
      sha256 "0901cbe7291fa450cce2469de870bf252ea25565841524c0b78b8e4745bedd21"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.4.0/halo_darwin_amd64.tar.gz"
      sha256 "09245aa02625d83aefd9e1524766d7a60404294ed229695a7129f2ca6fbaa4c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.4.0/halo_linux_arm64.tar.gz"
      sha256 "604cb8dcc973a61a845dded074b94e97d60eb0177684df1bc79ad4954dcc2f47"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.4.0/halo_linux_amd64.tar.gz"
      sha256 "6d2b600f116020c2b1ca0bd40af33c48d830281a194d4e056d5ea52f3e968001"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
