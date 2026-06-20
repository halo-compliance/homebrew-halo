class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.44.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.44.0/halo_darwin_arm64.tar.gz"
      sha256 "799a5d21427923d63b9e1f15757332477f93baef24a15193b75258321d87b386"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.44.0/halo_darwin_amd64.tar.gz"
      sha256 "fcae7b9df1da5975d9e70fa7ee5c40f058f5a9525b5614a9fa6d251941489182"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.44.0/halo_linux_arm64.tar.gz"
      sha256 "a59ddfbdff746ab0a06c6a9286d50a9c86c25e51fc74cc54569a89d083e676f1"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.44.0/halo_linux_amd64.tar.gz"
      sha256 "6074c3a8fcfa50ee2f6086f678fa138e58b1189270b9796dae44bcc1bf6f3369"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
