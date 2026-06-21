class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.54.1"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.54.1/halo_darwin_arm64.tar.gz"
      sha256 "75ee895f92dede0c2b9c60275ab30b69173ab81e001f5863997738860ba9b720"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.54.1/halo_darwin_amd64.tar.gz"
      sha256 "ff56abcb369d7ea35b813b4606630bf51b0d3c18d9099089d940c4b32a9ed4ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.54.1/halo_linux_arm64.tar.gz"
      sha256 "3a3616c93865ec8b8379ba2089bd29105081f4fa286ed0eab0766565472b3db3"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.54.1/halo_linux_amd64.tar.gz"
      sha256 "6f6981f2f19f01dc6b370480f9c908676fbf306a1b0f1de808b3d15a19857fc3"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
