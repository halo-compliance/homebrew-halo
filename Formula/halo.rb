class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.68.1"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.68.1/halo_darwin_arm64.tar.gz"
      sha256 "09588ee9330ed74df0591d5b50c9d545c06e90e31d113689bb658f53340003c0"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.68.1/halo_darwin_amd64.tar.gz"
      sha256 "210dff773444cdf31b51085fabe9fd2e233a729ea67b9b303864fe5e572cd7fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.68.1/halo_linux_arm64.tar.gz"
      sha256 "bd0b065e8399acdfa71bcc6666209ce7bef65a401e8bea24312a6fec7d7ebea2"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.68.1/halo_linux_amd64.tar.gz"
      sha256 "902cb71174840e16462a622fb1128721fb3af1694a95d9a77d867ae8cb792f3a"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
