class Sls < Formula
  desc "Remote directory listing via SSH (scp-style)"
  homepage "https://github.com/aki009/sls"
  url "https://github.com/aki009/sls/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "5435e15af5cc7488142a7bdf9b208bc81220f3d2ab2f024ba48f7aec34ab760c"
  license "GPL-2.0-or-later"

  def install
    system "make"
    bin.install "sls"
    man1.install "sls.1"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/sls 2>&1", 1)
  end
end
