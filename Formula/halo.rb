class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.8.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.8.0/halo_darwin_arm64.tar.gz"
      sha256 "ed9b5447b59d9d97ae6674d5342b83b8614cc96e0f011949cd70f427b103193d"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.8.0/halo_darwin_amd64.tar.gz"
      sha256 "4859f6261c44833b646e6840faa56d2d67f63d5c893fb93cfe3d8be7e39e29df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.8.0/halo_linux_arm64.tar.gz"
      sha256 "b3d8254646dc850bf54385917368341ba97868352283812ef6a0af5d9164a8c5"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.8.0/halo_linux_amd64.tar.gz"
      sha256 "4c7966eceffb5058d75613fb6e56a31ba5c9518e0a5ccff957f6839244c136ad"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
