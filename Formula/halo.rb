class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.21.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.21.0/halo_darwin_arm64.tar.gz"
      sha256 "06937279a3838773a3d8be4f1daa9d6f69be5820f6426c2b7f0206f71b1fdd7a"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.21.0/halo_darwin_amd64.tar.gz"
      sha256 "089c140aabb9fedb414b5bbaa4830f7c719f11d5159f87db5ae178c1251afc32"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.21.0/halo_linux_arm64.tar.gz"
      sha256 "5de86f557c2dc058269e49cda29c0a54142d331a0b0e3d38712c2829f92d8732"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.21.0/halo_linux_amd64.tar.gz"
      sha256 "b7039e6efff90b4f02a98822c9ee42bbb58a8b9ecf41be728f9d972edc0d5d76"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
