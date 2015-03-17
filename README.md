gcc-4.8.3-boost-1.55
====================

Bash script to install gcc-4.8.3 and boost-1.55 on CentOS 5.x, CentOS 6.x and Mac OS X. It handles the dependent packages like gmp-5.1.3, mpfr-3.1.2, mpc-1.0.2, ppl-1.1, cloog-0.18.3 and binutils-2.24.

To use it:

    $ mkdir -p /opt
    $ mkdir -p /opt/gcc483
    $ cd /opt/gcc483
    $ git clone https://github.com/centminmod/gcc-4.8.3-boost-1.55.git 4.8.3
    $ cd 4.8.3
    $ make

on 4 cpu thread OpenVZ 1GB Ram server make took just over 93 minutes to compile

    time make -j4
    real    93m27.097s
    user    82m58.238s
    sys     4m33.888s

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

When the build is complete you can safely remove the archives, bld and src directory trees to save disk space. In fact you can remove everything under directory /opt/gcc483/4.8.3/ except the contents of the /opt/gcc483/4.8.3/rtf directory tree to save disk space.

Disk usage

    du -h --max-depth=1 /opt/gcc483/4.8.3/
    4.8G    /opt/gcc483/4.8.3/bld
    2.0G    /opt/gcc483/4.8.3/src
    936M    /opt/gcc483/4.8.3/rtf
    16M     /opt/gcc483/4.8.3/logs
    188M    /opt/gcc483/4.8.3/archives
    588K    /opt/gcc483/4.8.3/.git
    7.8G    /opt/gcc483/4.8.3/

Directory and file structure

    ls -lah /opt/gcc483/4.8.3/
    total 72K
    drwxr-xr-x  8 root root 4.0K Mar 16 23:09 .
    drwxr-xr-x  3 root root 4.0K Mar 16 23:08 ..
    drwxr-xr-x  8 root root 4.0K Mar 16 23:08 .git
    -rw-r--r--  1 root root 1.1K Mar 16 23:08 LICENSE
    -rw-r--r--  1 root root  196 Mar 16 23:08 Makefile
    -rw-r--r--  1 root root  357 Mar 16 23:08 README.md
    drwxrwxrwx  2 root root 4.0K Mar 16 23:09 archives
    drwxrwxrwx 11 root root 4.0K Mar 17 00:29 bld
    -rwxr-xr-x  1 root root  25K Mar 16 23:08 bld.sh
    drwxr-xr-x  2 root root 4.0K Mar 16 23:08 logs
    drwxrwxrwx  9 root root 4.0K Mar 17 00:29 rtf
    drwxrwxrwx 11 root root 4.0K Mar 16 23:09 src

    ls -lah /opt/gcc483/4.8.3/rtf/
    total 36K
    drwxrwxrwx 9 root root 4.0K Mar 17 00:29 .
    drwxr-xr-x 8 root root 4.0K Mar 16 23:09 ..
    drwxrwxrwx 2 root root 4.0K Mar 17 00:29 bin
    drwxrwxrwx 5 root root 4.0K Mar 17 00:29 include
    drwxrwxrwx 4 root root 4.0K Mar 17 00:29 lib
    drwxrwxrwx 2 root root 4.0K Mar 17 00:23 lib64
    drwxrwxrwx 3 root root 4.0K Mar 17 00:23 libexec
    drwxrwxrwx 8 root root 4.0K Mar 17 00:23 share
    drwxrwxrwx 4 root root 4.0K Mar 17 00:29 x86_64-unknown-linux-gnu    

    ls -lah /opt/gcc483/4.8.3/rtf/bin
    total 223M
    drwxrwxrwx 2 root root 4.0K Mar 17 00:29 .
    drwxrwxrwx 9 root root 4.0K Mar 17 00:29 ..
    -rwxr-xr-x 1 root root 4.7M Mar 17 00:29 addr2line
    -rwxr-xr-x 2 root root 4.8M Mar 17 00:29 ar
    -rwxr-xr-x 2 root root 6.6M Mar 17 00:29 as
    -rwxr-xr-x 4 root root 3.0M Mar 17 00:23 c++
    -rwxr-xr-x 1 root root 4.6M Mar 17 00:29 c++filt
    -rwxr-xr-x 1 root root  11K Mar 16 23:22 cloog
    -rwxr-xr-x 1 root root 3.0M Mar 17 00:23 cpp
    -rwxr-xr-x 1 root root  48M Mar 17 00:29 dwp
    -rwxr-xr-x 1 root root  94K Mar 17 00:29 elfedit
    -rwxr-xr-x 4 root root 3.0M Mar 17 00:23 g++
    -rwxr-xr-x 3 root root 3.0M Mar 17 00:23 gcc
    -rwxr-xr-x 2 root root 129K Mar 17 00:23 gcc-ar
    -rwxr-xr-x 2 root root 129K Mar 17 00:23 gcc-nm
    -rwxr-xr-x 2 root root 129K Mar 17 00:23 gcc-ranlib
    -rwxr-xr-x 1 root root 1.6M Mar 17 00:23 gcov
    -rwxr-xr-x 1 root root 5.2M Mar 17 00:29 gprof
    -rwxr-xr-x 1 root root  81K Mar 16 23:10 iconv
    -rwxr-xr-x 4 root root 6.7M Mar 17 00:29 ld
    -rwxr-xr-x 4 root root 6.7M Mar 17 00:29 ld.bfd
    -rwxr-xr-x 2 root root  70M Mar 17 00:29 ld.gold
    -rwxr-xr-x 2 root root 4.7M Mar 17 00:29 nm
    -rwxr-xr-x 2 root root 5.6M Mar 17 00:29 objcopy
    -rwxr-xr-x 2 root root 7.0M Mar 17 00:29 objdump
    -rwxr-xr-x 1 root root 607K Mar 16 23:21 ppl-config
    -rwxr-xr-x 1 root root 834K Mar 16 23:21 ppl_lcdd
    -rwxr-xr-x 1 root root 759K Mar 16 23:21 ppl_pips
    -rwxr-xr-x 2 root root 4.8M Mar 17 00:29 ranlib
    -rwxr-xr-x 1 root root 1.2M Mar 17 00:29 readelf
    -rwxr-xr-x 1 root root 4.7M Mar 17 00:29 size
    -rwxr-xr-x 1 root root 4.7M Mar 17 00:29 strings
    -rwxr-xr-x 2 root root 5.6M Mar 17 00:29 strip
    -rwxr-xr-x 4 root root 3.0M Mar 17 00:23 x86_64-unknown-linux-gnu-c++
    -rwxr-xr-x 4 root root 3.0M Mar 17 00:23 x86_64-unknown-linux-gnu-g++
    -rwxr-xr-x 3 root root 3.0M Mar 17 00:23 x86_64-unknown-linux-gnu-gcc
    -rwxr-xr-x 3 root root 3.0M Mar 17 00:23 x86_64-unknown-linux-gnu-gcc-4.8.3
    -rwxr-xr-x 2 root root 129K Mar 17 00:23 x86_64-unknown-linux-gnu-gcc-ar
    -rwxr-xr-x 2 root root 129K Mar 17 00:23 x86_64-unknown-linux-gnu-gcc-nm
    -rwxr-xr-x 2 root root 129K Mar 17 00:23 x86_64-unknown-linux-gnu-gcc-ranlib

Packages Installed
====================

* binutils    2.24    http://ftp.gnu.org/gnu/binutils
* boost       1.55.0  http://sourceforge.net/projects/boost/files/boost
* cloog       0.18.3  http://www.bastoul.net/cloog
* gcc         4.8.3   http://ftp.gnu.org/gnu/gcc
* gmp         5.1.3   http://gmplib.org/
* libiconv    1.14    http://ftp.gnu.org/pub/gnu/libiconv
* mpc         1.0.2   http://www.multiprecision.org/mpc
* mpfr        3.1.2   http://www.mpfr.org
* ppl         1.1     http://bugseng.com/products/ppl

