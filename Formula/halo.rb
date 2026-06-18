class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.32.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.32.0/halo_darwin_arm64.tar.gz"
      sha256 "36c1e5c5c318fcf348c73180e47b4fb082f2d61222f575873dc0a76f560963fe"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.32.0/halo_darwin_amd64.tar.gz"
      sha256 "c3a2c33b078b4f062aa90f5a4e72bc00d8e74a95c11e6ca4be41de50a18bbabb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.32.0/halo_linux_arm64.tar.gz"
      sha256 "934617a744f9f31f04eb493b2ae1abbc5cc3ad01625369f9d05faf488d46b3d1"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.32.0/halo_linux_amd64.tar.gz"
      sha256 "ff34fa0d1bafc3eef09d11fb936e071816ff7cffb2e3b6b3ad73cb757e3c5e32"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
