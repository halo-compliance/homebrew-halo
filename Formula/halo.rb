class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.34.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.34.0/halo_darwin_arm64.tar.gz"
      sha256 "4559bb82832f0a75a0f26bc0399393bc3e5af0bd9a5636958e1b46eaa63ebe5f"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.34.0/halo_darwin_amd64.tar.gz"
      sha256 "829306bc6cdc10bb2afab98ed7631bcea7ff8dc512a4da93d2259e84d594a660"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.34.0/halo_linux_arm64.tar.gz"
      sha256 "409a4f4c9c7b3f9f037bb521662acf3a5a7334146308dc3bb3670308a4dbb23e"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.34.0/halo_linux_amd64.tar.gz"
      sha256 "823997887c4ba939e76512aa013ee0cc920b9ebd056ac5b7aeb8cadbee5abe42"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
