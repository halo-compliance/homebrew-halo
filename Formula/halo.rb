class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.27.2"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.27.2/halo_darwin_arm64.tar.gz"
      sha256 "1cfed8307754cd4ef0f8230e6fa69b93c7d2466dec7ed74ea4a9ffc883337ccc"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.27.2/halo_darwin_amd64.tar.gz"
      sha256 "712a7f93fb39997b1225f3c51309b84dad1895fe144c137ce675f66b29c490b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.27.2/halo_linux_arm64.tar.gz"
      sha256 "6fdb40f04e13190179aa7b1bd4cbb6bf62acd223d11fff35a135d07f653a79c0"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.27.2/halo_linux_amd64.tar.gz"
      sha256 "099d2a6a99185ba8c3f6e5ee280fee122a42cc1bb69e9fd5869cfe1678f03793"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
