class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.62.1"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.62.1/halo_darwin_arm64.tar.gz"
      sha256 "49a400f7e948d26cdbc454de4f2b84a014a4ccd886c1f8f35af036c72c29fae3"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.62.1/halo_darwin_amd64.tar.gz"
      sha256 "120470014ac756348c7a9287080b4b85776b48a0c48e0099370d3205c8d17b68"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.62.1/halo_linux_arm64.tar.gz"
      sha256 "a7ea91dbfbd9d0765334ecf2652889eba7e6332f2db57f291d5e7bbe77a06eae"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.62.1/halo_linux_amd64.tar.gz"
      sha256 "422c36432cf2dad7a76f42afb19ef0c2a46f9bb20c09a3740c1696a4519f13b6"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
