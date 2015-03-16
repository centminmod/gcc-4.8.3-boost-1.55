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

When the build is complete you can safely remove the archives, bld and src directory trees to save disk space.

