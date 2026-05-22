class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.10.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.10.0/halo_darwin_arm64.tar.gz"
      sha256 "e15d51d68a6a8dc67c19bdb491f29347d350a9298749b048d730a9bad7981646"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.10.0/halo_darwin_amd64.tar.gz"
      sha256 "592f3ace536160d7ec8025372d5e94ee53af21f2cfad0119a325fc2a3323bdb3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.10.0/halo_linux_arm64.tar.gz"
      sha256 "7df8c8a3c0a066acda14d9f5101305d6954e3155ed893a4e9285234c089974a2"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.10.0/halo_linux_amd64.tar.gz"
      sha256 "d68869aaad6595f03535b4969d690791af27693c7ca9c0788b0ae1006a586afc"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
