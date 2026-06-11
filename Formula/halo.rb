class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.28.1"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.28.1/halo_darwin_arm64.tar.gz"
      sha256 "4dafcf2874bba2b9a0e03aac1fd2d2c910083ddf415034a50dcbe0b1a6a14b0a"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.28.1/halo_darwin_amd64.tar.gz"
      sha256 "216abbd7608d5570e68ed2a43f30e2de31e257c1c0aed175ff40cfad37a8a403"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.28.1/halo_linux_arm64.tar.gz"
      sha256 "49873c318c4a7e0a26e0f7aab085fc09350af220039e472ccd4a7b85670a1e1e"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.28.1/halo_linux_amd64.tar.gz"
      sha256 "67a3520bff75daff5097103541eac88d55a76c9db70b45fe8d4813ea72e1e127"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
