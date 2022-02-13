class PcbRnd < Formula
  desc "Ringdove PCB Editor"
  homepage "http://www.repo.hu/projects/pcb-rnd"
  url "http://www.repo.hu/projects/pcb-rnd/releases/pcb-rnd-3.0.3.tar.bz2"
  sha256 "4c8a4371a9420e3da499858edc35dbee85a5cf6fddaccca6c4536b30c08503fd"
  license "GPL-2.0-only"

  bottle do
    rebuild 1
    root_url "https://github.com/majenkotech/homebrew-majenko/releases/download/v1.0.0/"
    sha256 monterey: "8c019bfffe7d3c779d79364ccabc3e043961608a29eba46eaf7b041daadcf78e"
  end

  depends_on "gd"
  depends_on "librnd"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    system "false"
  end
end
