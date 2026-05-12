class Halo < Formula
  desc "Halo compliance platform CLI"
  homepage "https://github.com/halo-compliance/cli"
  version "0.1.12"
  license "UNLICENSED"

  on_macos do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.12/halo_darwin_arm64.tar.gz"
      sha256 "9645893298bca49e1e19b8cc1c103414bb1ef543cb58e532a36a138760d138fe"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.12/halo_darwin_amd64.tar.gz"
      sha256 "e611ff1335a3a498305b54aee4c6731950a8cc00ff2b5dffdb49f862f6a23b6a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.12/halo_linux_arm64.tar.gz"
      sha256 "70747389bc836aa7ea2e8b6bf19cc56fc7e9a93bd26a41780ee98ebac895b05f"
    else
      url "https://halo-compliance-cli-releases.s3.us-east-1.amazonaws.com/0.1.12/halo_linux_amd64.tar.gz"
      sha256 "185987db42e9a046419fe719fe78f1e486d19d977a87eedf51610fc535e6c3e5"
    end
  end

  def install
    bin.install "halo"
  end

  test do
    system "#{bin}/halo", "--version"
  end
end
