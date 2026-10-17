class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.69.2"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.69.2/halo_darwin_arm64.tar.gz"
      sha256 "c37886a0160b59ffeded038f3bf3baedccb81d5f95033535ec1c51a2fac6c78f"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.69.2/halo_darwin_amd64.tar.gz"
      sha256 "4677b3cfb6cfbebf08c9fe15b890bd669629fb9f1af5a43d8edc63b39c72d05f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.69.2/halo_linux_arm64.tar.gz"
      sha256 "a1ba6c6cf4737b5b661ef5ed9b1cc56fce1128b058e03640a8ed2fa6734e2491"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.69.2/halo_linux_amd64.tar.gz"
      sha256 "e7add0d906b241c5ff73e951f3e5543b3974e72fc487f1ed9c16995ae7c560be"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
