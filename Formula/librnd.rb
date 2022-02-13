class Librnd < Formula
  desc "Ringdove HID library"
  homepage "http://www.repo.hu/projects/librnd/"
  url "http://www.repo.hu/projects/librnd/releases/librnd-3.1.0.tar.bz2"
  # version "3.1.0"
  sha256 "55c5035736d55cbcbca2bd38f30ecff136b2dac6d1c3b79be05b666ee2c181e6"
  license "GPL-2.0-only"

  depends_on "pkg-config" => :build
  depends_on "gd"
  # depends_on "gtk4"
  depends_on "gtk+"

  def install
    # system "./configure", "--prefix=#{prefix}", "--buildin-hid_gtk4_gl"
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    system "false"
  end
end
