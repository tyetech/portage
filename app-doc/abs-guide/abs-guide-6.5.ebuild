# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-doc/cvs-repo/gentoo-x86/app-doc/abs-guide/abs-guide-6.5.ebuild,v 1.2 2012/06/02 03:40:06 dirtyepic Exp $

EAPI="4"

DESCRIPTION="An advanced reference and a tutorial on bash shell scripting"
HOMEPAGE="http://www.tldp.org/LDP/abs/html"

# Upstream likes to update the tarballs without changing the names.
# - http://bash.deta.in/abs-guide-${PV}.tar.bz2
# - http://bash.deta.in/abs-guide.pdf <- remember to rename with ${PV}
SRC_URI="http://dev.gentoo.org/~dirtyepic/dist/${P}.tar.bz2
	pdf? ( http://dev.gentoo.org/~dirtyepic/dist/${P}.pdf )"

LICENSE="OPL"
IUSE="pdf"
SLOT="0"
KEYWORDS="alpha amd64 hppa ~mips ppc sparc x86"

DEPEND=""
RDEPEND=""

S="${WORKDIR}/abs"

src_unpack() {
	unpack ${P}.tar.bz2
	use pdf && cp "${DISTDIR}"/${P}.pdf "${S}"
}

src_install() {
	dodoc -r *
	docompress -x /usr/share/doc/${PF}
}
