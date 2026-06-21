class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.50.2"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.50.2/halo_darwin_arm64.tar.gz"
      sha256 "6c6d664e563a82924f3311e1a215c9710a9094000561885501a120350447e9e5"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.50.2/halo_darwin_amd64.tar.gz"
      sha256 "4c30a8dc833a821c8a03cbfe70ab3ae72c0fab1436cba819e9378c2e577b94e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.50.2/halo_linux_arm64.tar.gz"
      sha256 "acb1b59f2c4d41abfca17c4dd4a36527a1b8cf03490e6b05af92e92f1e4d8601"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.50.2/halo_linux_amd64.tar.gz"
      sha256 "d7a66513c5fb1f576e5a75f9fd3a715ec145c5efd173310e32c175d89f62c4c4"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
