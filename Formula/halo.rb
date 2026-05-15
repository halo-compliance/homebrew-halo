class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.6.5"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.5/halo_darwin_arm64.tar.gz"
      sha256 "d10e2603ae022d43dd71826b75304d59e738466c7b67c19bc615d31ca97e6962"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.5/halo_darwin_amd64.tar.gz"
      sha256 "2e6924e3d8d09c1ffac8cee70288c282738584ee10b1d212ce70153a8805d057"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.5/halo_linux_arm64.tar.gz"
      sha256 "c30747068eab5294543be2dff26f41de775cab90d344e8bca92717387f5570b6"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.6.5/halo_linux_amd64.tar.gz"
      sha256 "234c3a77e98004fc467d1c9b1f5b93bc0a320477508ef99a2ae68cef9a77d2cb"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
