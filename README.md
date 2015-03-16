gcc-4.8.3-boost-1.55
====================

Bash script to install gcc-4.8.3 and boost-1.55 on CentOS 5.x, CentOS 6.x and Mac OS X. It handles the dependent packages like gmp-5.1.3, mpfr-3.1.2, mpc-1.0.2, ppl-1.1, cloog-0.18.0 and binutils-2.24.

To use it:

    $ mkdir -p /opt
    $ mkdir -p /opt/gcc483
    $ cd /opt/gcc483
    $ git clone https://github.com/centminmod/gcc-4.8.3-boost-1.55.git 4.8.3
    $ cd 4.8.3
    $ make

To clean up and remove everything you can run

    $ make clean

or

    $ make clean-all

what they specifically clean up

    clean-all:
        rm -rf bld src rtf archives logs
    
    clean:
        rm -rf bld src rtf *~


For more detailed information see http://joelinoff.com/blog/?p=1514.

Script details
====================

This script creates 4 subdirectories:

    Directory  Description
    =========  ==================================================
    archives   This is where the package archives are downloaded.
    src        This is where the package source is located.
    bld        This is where the packages are built from source.
    rtf        This is where the packages are installed.

When the build is complete you can safely remove the archives, bld and src directory trees to save disk space. In fact you can remove everything under directory /opt/gcc483/gcc/4.8.3/ except the contents of the /opt/gcc483/gcc/4.8.3/rtf directory tree to save disk space.

Packages Installed
====================

* binutils    2.24    http://ftp.gnu.org/gnu/binutils
* boost       1.55.0  http://sourceforge.net/projects/boost/files/boost
* cloog       0.18.0  http://www.bastoul.net/cloog”>http://www.bastoul.net/cloog
* gcc         4.8.3   http://ftp.gnu.org/gnu/gcc
* gmp         5.1.3   http://gmplib.org/
* libiconv    1.14    http://ftp.gnu.org/pub/gnu/libiconv
* mpc         1.0.2   http://www.multiprecision.org/mpc
* mpfr        3.1.2   http://www.mpfr.org
* ppl         1.1     http://bugseng.com/products/ppl

