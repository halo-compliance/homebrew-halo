class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.66.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.66.0/halo_darwin_arm64.tar.gz"
      sha256 "aa6e22dc504173101a055d26ba138cf95e7eec3f1030ca5f99b26b83e42e2165"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.66.0/halo_darwin_amd64.tar.gz"
      sha256 "c8b826b8391040f5248fe764b020dab01bbad1c43129a7b94cecd0415dd3f3b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.66.0/halo_linux_arm64.tar.gz"
      sha256 "248769f1d6bff21edc7d58da1557ea2f563aa7f035aaebe7eab9da68294b402e"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.66.0/halo_linux_amd64.tar.gz"
      sha256 "8851fb0f0112c82d24505cc31788fb6e2002c895b5a4b298788ff212d6f819de"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
