# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/audiofile/Attic/audiofile-0.2.3-r1.ebuild,v 1.10 2002/12/09 04:26:10 manson Exp $

inherit libtool

S=${WORKDIR}/${P}
DESCRIPTION="An elegant API for accessing audio files"
SRC_URI="ftp://oss.sgi.com/projects/audiofile/download/${P}.tar.gz"
HOMEPAGE="http://oss.sgi.com/projects/audiofile/"

DEPEND="virtual/glibc"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86 ppc sparc  alpha"

src_compile() {

	elibtoolize

	econf || die
	emake || die
}

src_install() {
	einstall || die

	dodoc ACKNOWLEDGEMENTS AUTHORS COPYING* ChangeLog README TODO
	dodoc NEWS NOTES
}
