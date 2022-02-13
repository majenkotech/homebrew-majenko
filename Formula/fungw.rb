class Fungw < Formula
  desc "Portable library written in C that manages dynamic function calls"
  homepage "http://repo.hu/projects/fungw/"
  url "http://www.repo.hu/projects/fungw/releases/fungw-1.2.0.tar.bz2"
  sha256 "e50cb1e25c05b7f5e93eb60aa5f8b680801319e257f1c808ff11da0348f606d8"
  license "GPL-2.0-only"

  bottle do
    rebuild 1
    root_url "https://github.com/majenkotech/homebrew-majenko/releases/download/v1.0.0"
    sha256 monterey: "22a63da5f3829ccf4fd6b2da77b3d361d086f964c8cee6d191db7b42432e161f"
  end

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "-C", "libfungw", "install"
    system "make", "-C", "libfungwbind", "install"
    system "make", "-C", "doc", "install"
  end

  test do
    system "false"
  end
end
