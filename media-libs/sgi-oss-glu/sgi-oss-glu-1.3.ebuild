# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/sgi-oss-glu/Attic/sgi-oss-glu-1.3.ebuild,v 1.6 2002/12/09 04:26:13 manson Exp $

MY_P=oss-opengl-glu-20000925-1
S=${WORKDIR}/usr
DESCRIPTION="SGI'd GLU"
SRC_URI="ftp://mesa3d.sourceforge.net/pub/mesa3d/SI-GLU/${MY_P}.i386.rpm"
HOMEPAGE="http://www.mesa3d.org/downloads/sgi.html"

DEPEND=">=app-arch/rpm-3.0.6"

SLOT="0"
LICENSE="SGI-B as-is"
KEYWORDS="x86 -ppc -sparc "

src_unpack() {
	rpm2cpio ${DISTDIR}/${MY_P}.i386.rpm |cpio -i --make-directories
}

src_install () {
	insinto /usr/include/GL
	doins ${S}/include/GL/glu.h
	insinto /usr/lib
	doins ${S}/lib/*
}
