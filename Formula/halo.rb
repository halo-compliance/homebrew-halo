class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.22.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.22.0/halo_darwin_arm64.tar.gz"
      sha256 "751a7b84373aa020141d7abfe6344fd41cf5e8401fbfb18555f8c17c831bd99c"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.22.0/halo_darwin_amd64.tar.gz"
      sha256 "c27d7d00740c5742fd0d5bccad6615a0debe8b27fbc5c0ba4793d6dada5564c5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.22.0/halo_linux_arm64.tar.gz"
      sha256 "a4ffb22486da0f948a9cd0b0a326dc854777e13f4e7f3118e96f105a11c712ed"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.22.0/halo_linux_amd64.tar.gz"
      sha256 "6aa31b2b8f428a95bbfd69ca849c3c8d6697926edad442e3045073510622b013"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
