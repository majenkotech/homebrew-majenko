class Pic32prog < Formula
  desc "PIC32 Programming Tool"
  homepage "https://github.com/majenkotech/pic32prog-autotools"
  url "https://github.com/majenkotech/pic32prog-autotools/archive/refs/tags/2.1.57.tar.gz"
  sha256 "5e1124bfd66ef28187969a8ba7cfe2319b6db38bddad13babea06990522ccd58"
  license "GPL-2.0-or-later"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "libusb" => :build

  bottle do
    rebuild 1
    root_url "https://github.com/majenkotech/homebrew-majenko/releases/download/v1.0.0/"
    sha256 cellar: :any_skip_relocation, monterey: "e2a8c03f97471bbd6753c68db332f52a34474169500a2ae270fd4d4bd0366ba4"
  end

  def install
    system "aclocal"
    system "autoheader"
    system "glibtoolize", "--copy"
    system "autoconf"
    system "automake", "--gnu", "--copy", "--add-missing"
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "false"
  end
end
