class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.1.3"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.3/halo_darwin_arm64.tar.gz"
      sha256 "64272ffd12c7063338383588bea134efa39c6b86a5072844d2a76ee8601c3c74"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.3/halo_darwin_amd64.tar.gz"
      sha256 "6817bf425ab53a0c24501673367797896905f84a0089151161f90a1b30b036aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.3/halo_linux_arm64.tar.gz"
      sha256 "b4edb6e6ee0629d15d26ce551eb9d6fa0a926de4908ecf30d30a1198445b91d8"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.3/halo_linux_amd64.tar.gz"
      sha256 "e599eb88843c62e6e67ee4205e2a4989931cd4864171d6cf85679f1d356bae5a"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
