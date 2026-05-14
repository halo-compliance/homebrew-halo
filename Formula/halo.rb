class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.6.3"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.3/halo_darwin_arm64.tar.gz"
      sha256 "72e069a7a983cf823e3450a8170f44f2327ded2651bd876b1a389037bbeeaed9"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.3/halo_darwin_amd64.tar.gz"
      sha256 "4a7e9470ba3ff970626a3fb8fbc92ac9ddb728d5a0434c15a62ace37a5109c13"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.3/halo_linux_arm64.tar.gz"
      sha256 "b9c6a0e973bd9a56e8a8958c42eca5be46d826692a4445738c339542c4827dfd"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.3/halo_linux_amd64.tar.gz"
      sha256 "e0cc03cd5c4260fdc1c3614b63287d251e01c7b8f35e533a78f285ad3c764abb"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
