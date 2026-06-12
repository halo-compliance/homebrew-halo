class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.30.1"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.30.1/halo_darwin_arm64.tar.gz"
      sha256 "70bdf7ad17483b052aa2d361636941a5ed8ff0c65e465255facae09f77c9d8dd"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.30.1/halo_darwin_amd64.tar.gz"
      sha256 "fe3dda35921146b1c77b616d2e76ccd8dc6b386b2f04ef1a97becf7ea57b2fa2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.30.1/halo_linux_arm64.tar.gz"
      sha256 "5b664ccc24c607f0a727a872e3c21aac0a628ba239bfc4ef4b3046b6634e6622"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.30.1/halo_linux_amd64.tar.gz"
      sha256 "fe76650faf760d75b502404f24d0b6cbaf3fb1be2bcfb81257801d31ffac0d8a"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
