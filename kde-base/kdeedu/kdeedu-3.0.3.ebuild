# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdeedu/Attic/kdeedu-3.0.3.ebuild,v 1.1 2002/08/19 09:34:02 danarmak Exp $
inherit kde-dist

DESCRIPTION="KDE $PV - educational apps"

KEYWORDS="x86"

src_unpack() {

    base_src_unpack
    
    kde_sandbox_patch ${S}/klettres/klettres

}

src_compile() {

    # build fails with -fomit-frame-pointer optimization in kgeo
    kde_remove_flag kgeo -fomit-frame-pointer
    
    kde_src_compile all

}
