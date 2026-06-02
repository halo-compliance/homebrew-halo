class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.20.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.20.0/halo_darwin_arm64.tar.gz"
      sha256 "b9a823debbbab066fcaaea8925d74f4496dbfcc14c8b0d759aba6786a5bb6e8c"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.20.0/halo_darwin_amd64.tar.gz"
      sha256 "0a23318f53fac1e3f237ac0c2d67cbb1adcc7dc5b44acd56137e00371ee68acf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.20.0/halo_linux_arm64.tar.gz"
      sha256 "f37e446022dc48157ab27034fe2e44acad99978b614dc8e798959f165731920d"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.20.0/halo_linux_amd64.tar.gz"
      sha256 "66344f15deaafcb1105e40efe57838562bc829770c0872d7b0d12cfb435093b6"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
