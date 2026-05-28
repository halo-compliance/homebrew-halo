class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.15.0"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.15.0/halo_darwin_arm64.tar.gz"
      sha256 "32006c888b6136af0e20eb7b162d8ce12153d3fdf2036a8a98dc2717aa5ad88a"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.15.0/halo_darwin_amd64.tar.gz"
      sha256 "d3b8014d635b26007f8bf3e555b7e5cba11d5a43447957dfea7441a67fd8a45e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.15.0/halo_linux_arm64.tar.gz"
      sha256 "76bad0c6536312c75ec980475f908452b1ef9a4b9e1a43c8d0bca82e779007f1"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.15.0/halo_linux_amd64.tar.gz"
      sha256 "3c409cf5b266e2f5e53cdfd1ae49788207efc17d941bc9ca746da522757f1708"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
