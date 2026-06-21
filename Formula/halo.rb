class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.55.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.55.0/halo_darwin_arm64.tar.gz"
      sha256 "b6187ac03d92e2a4bb978f4afcf42241d923fe609a4975711fad30ddfb55f7e3"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.55.0/halo_darwin_amd64.tar.gz"
      sha256 "610d12eefda7885ac81ba323cf3e210458443c6b451b0d3be501e99ba3d4b5a2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.55.0/halo_linux_arm64.tar.gz"
      sha256 "1bf62e61fe17b495acaf67f2aff1a4653d803f6b5768936277e879689fed50ee"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.55.0/halo_linux_amd64.tar.gz"
      sha256 "3e2111ca789edc6d3a85311bed7e3515541f6d8d969bbf7897a38b056f239329"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
