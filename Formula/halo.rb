class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.1.9"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.9/halo_darwin_arm64.tar.gz"
      sha256 "0743e63d8001bb0f9309d399e1589d2bfd68ab334589074c6735e937eb4d4bb3"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.9/halo_darwin_amd64.tar.gz"
      sha256 "b183674fc49600cb4ee297903fe54b3717bb178c7ce69efde98dad636f0b30d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.9/halo_linux_arm64.tar.gz"
      sha256 "eb3e1d0917b365b858b7ba6b069dd4945e46d531cd92f93bd028b190e2cf27a1"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.9/halo_linux_amd64.tar.gz"
      sha256 "04cdab98835c2287b518953a8c233491fe2fbe29045500281854674871a5abbd"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
