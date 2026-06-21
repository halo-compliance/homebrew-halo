class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.47.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.47.0/halo_darwin_arm64.tar.gz"
      sha256 "7f3de0123f97fd9f043a9310636620b2fccbca23ba48ffdd460d4a6e753404fc"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.47.0/halo_darwin_amd64.tar.gz"
      sha256 "9660a26afac5a4fbb298d9b79edce97abac3c4a0cd8fb94a64911d3cd3295ad9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.47.0/halo_linux_arm64.tar.gz"
      sha256 "2432cad7f6e2e46fa4b7dddded8f96f829e4007113f68ca49c0abd64372f147b"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.47.0/halo_linux_amd64.tar.gz"
      sha256 "0f56f40216ee5469463067ccb785cf91b8286827a1fe91b617f0696ed332d08b"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
