class PcbRnd < Formula
  desc "Ringdove PCB Editor"
  homepage "http://www.repo.hu/projects/pcb-rnd"
  url "http://www.repo.hu/projects/pcb-rnd/releases/pcb-rnd-3.0.3.tar.bz2"
  sha256 "4c8a4371a9420e3da499858edc35dbee85a5cf6fddaccca6c4536b30c08503fd"
  license "GPL-2.0-only"

  depends_on "librnd"
  depends_on "gd"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    system "false"
  end
end
