# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdeedu/Attic/kdeedu-3.0.2.ebuild,v 1.9 2003/01/30 19:40:19 danarmak Exp $
inherit kde-dist

DESCRIPTION="KDE $PV - educational apps"

KEYWORDS="x86 ppc sparc "

src_unpack() {

    kde_src_unpack
    
    kde_sandbox_patch ${S}/klettres/klettres

}

src_compile() {

    # build fails with -fomit-frame-pointer optimization in kgeo
    
    CFLAGS2="$CFLAGS"
    CXXFLAGS2="$CXXFLAGS"
    CFLAGS=${CFLAGS/-fomit-frame-pointer}
    CXXFLAGS=${CXXFLAGS/-fomit-frame-pointer}
    
    kde_src_compile myconf configure
    
    cd ${S}/kgeo
    emake || die
    
    CFLAGS="$CFLAGS2"
    CXXFLAGS="$CXXFLAGS2"
    
    kde_src_compile all

}
