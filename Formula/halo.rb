class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.33.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.33.0/halo_darwin_arm64.tar.gz"
      sha256 "357c837de94863a5a01fb57ba661b5a5c6e3a5d4fa7a1c99767fdad09a161919"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.33.0/halo_darwin_amd64.tar.gz"
      sha256 "b3407c87d991c72794837bc5144b87cfd47a9b42e98a6fa847ad84fa2b3f4fb6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.33.0/halo_linux_arm64.tar.gz"
      sha256 "66edf055962a9efb1230b632b22be860e6ddbbadaea92c76926946e6bd6b5503"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.33.0/halo_linux_amd64.tar.gz"
      sha256 "1336151316046372c9889acad3ad3c5039c28dfa0aa4674f475daf36b8004f34"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
