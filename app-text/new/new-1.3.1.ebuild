# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/app-text/cvs-repo/gentoo-x86/app-text/new/Attic/new-1.3.1.ebuild,v 1.1 2002/10/30 12:53:51 aliz Exp $

S=${WORKDIR}/${P}
DESCRIPTION="New is a template system, especially useful in conjunction with a simple text editor such as vi."
SRC_URI="http://www.flyn.org/projects/new/${P}.tar.gz"
HOMEPAGE="http://www.flyn.org"

DEPEND="${RDEPEND}"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~x86"

src_install () {
	einstall || die

	dodoc AUTHORS COPYING ChangeLog INSTALL NEWS README TODO
}
