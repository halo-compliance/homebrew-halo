class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.54.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.54.0/halo_darwin_arm64.tar.gz"
      sha256 "3ccfb8a977d3733b0f003aeb29ab49e09b0ce293c18ca1e577e231598bb89eaa"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.54.0/halo_darwin_amd64.tar.gz"
      sha256 "a4a28ad8536c4604117139f00ff61441334d260df5e9630ec0a82af95dab1b15"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.54.0/halo_linux_arm64.tar.gz"
      sha256 "cf3672c7742abc420e5f0f2e3555c99370a7b99b61c90af8b72e23e8673c8ca2"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.54.0/halo_linux_amd64.tar.gz"
      sha256 "a8945e8201df4e6759b7ffff3cb998cdb78dd9b42ea1f17c2ac4562c3ee27254"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
