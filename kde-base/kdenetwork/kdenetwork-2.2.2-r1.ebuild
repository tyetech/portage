# Copyright 1999-2000 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdenetwork/Attic/kdenetwork-2.2.2-r1.ebuild,v 1.3 2002/07/11 06:30:27 drobbins Exp $

inherit kde-dist || die

DESCRIPTION="${DESCRIPTION}Network"

src_unpack() {

    base_src_unpack
    kde_sandbox_patch ${S}/kppp

}
src_install() {

    kde_src_install
    
    chmod +s ${D}/${KDEDIR}/bin/reslisa

}
