class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.35.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.35.0/halo_darwin_arm64.tar.gz"
      sha256 "74d490d89e9a36735ffc2b293423e0efcfa5650f6daae4ff3c9129f0cf906498"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.35.0/halo_darwin_amd64.tar.gz"
      sha256 "06e16002ae07073019ff6adae274782123e427c533c4b354d4b259dd0b59478e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.35.0/halo_linux_arm64.tar.gz"
      sha256 "1aa8129abe363b2dc884cda94c916d2e61a96cda68c01fd99df4a772f60334df"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.35.0/halo_linux_amd64.tar.gz"
      sha256 "1f326940b6dbc18368f7f147e03198084fa17a61cd035c501baff5734a687259"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
