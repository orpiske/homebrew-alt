require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Submarine < Formula
  homepage ''
  url 'https://github.com/blazt/submarine/tarball/0.1.3'
  sha1 '82816da3cd90bc8253603f83cae0ff387363e81c'


  depends_on 'glib' => :build
  depends_on 'libgee' => :build
  depends_on 'libsoup' => :build
  depends_on 'libarchive' => :build

  def install
    # ENV.j1  # if your formula's build system can't parallelize

    system "./autogen.sh"
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    
    system "make install" # if this fails, try separate make/make install steps
  end
  
  
  def caveats
    <<-EOS.undent
    This formula requires libarchive from homebrew dupes. 
    
    To install homebrew dupes, run: 
    brew tap homebrew/dupes
    
    This package also requires newer autoconf and automake versions than those provided by Apple. 

    To properly install this package, you must run: 
    export PATH=/usr/local/Cellar/autoconf/2.69/bin:/usr/local/Cellar/automake/1.12.1/bin:$PATH
    EOS
  end
end
