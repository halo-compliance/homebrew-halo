class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.48.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.48.0/halo_darwin_arm64.tar.gz"
      sha256 "4cfe353f278ffb4355e98691f793449637e9367956957c72ead52d88fe208e1b"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.48.0/halo_darwin_amd64.tar.gz"
      sha256 "32c6903ba771f407e1c296ad122ab4b43b531e52d01fd874778f84b845355021"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.48.0/halo_linux_arm64.tar.gz"
      sha256 "cb8615ac29568665fea3a57ccab16546d7f23d0d890687ff674b29393a558d31"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.48.0/halo_linux_amd64.tar.gz"
      sha256 "6c59e26238f3b0df89808ce28daff474a5162bfb9f0baa528a05710019d13703"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
