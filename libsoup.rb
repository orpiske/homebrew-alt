require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Libsoup < Formula
  homepage ''
  url 'ftp://ftp.gnome.org/pub/gnome/sources/libsoup/2.38/libsoup-2.38.1.tar.xz'
  sha1 '8418440ff59917dee2e5618965cf8683b61258bf'

  depends_on 'gnutls' => :build
  depends_on 'glib' => :build
  depends_on 'gobject-introspection' => :build
  # depends_on '

  def install
    # ENV.x11 # if your formula requires any X11 headers
    # ENV.j1  # if your formula's build system can't parallelize

    system "./configure", "--without-gnome","--disable-tls-check","--disable-gtk-doc","--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    system "make install" # if this fails, try separate make/make install steps
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test libsoup`.
    system "false"
  end
end
