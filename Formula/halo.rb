class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.27.1"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.27.1/halo_darwin_arm64.tar.gz"
      sha256 "ed2aff08ef1fd2bd6ca2064f65f0d3d5ff5c22b2b1e393debda127f20e37210d"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.27.1/halo_darwin_amd64.tar.gz"
      sha256 "eb26dc90d79b43178c0fbe370b99c5457d77e941a60b648d368c43a489ff25a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.27.1/halo_linux_arm64.tar.gz"
      sha256 "b1ec0911730107be62c4da9a2081f79160301ebe911774255f619686ab803ea6"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.27.1/halo_linux_amd64.tar.gz"
      sha256 "ec6e98e192529775098d8419fae46f035cafb59b50b7d38d65c1d8b2e5055ce6"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
