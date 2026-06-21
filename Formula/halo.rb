class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.46.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.46.0/halo_darwin_arm64.tar.gz"
      sha256 "4bbbd2a3098cdfddc8d0843b6119c23b09d478e9c2afb74e55565fdb0c715845"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.46.0/halo_darwin_amd64.tar.gz"
      sha256 "fd0c7583a54672cd3750202be2639afbc24655a1ea266690a00d9ddddf6f9fad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.46.0/halo_linux_arm64.tar.gz"
      sha256 "dff5631ced89993f98b1ef24bb5ce3706f1cf460d5a22fc2d009e06ec8fc8ffe"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.46.0/halo_linux_amd64.tar.gz"
      sha256 "d44268eadd136a31721383cfd8431973e3fc62e1a8f712416077a57f20000da0"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
