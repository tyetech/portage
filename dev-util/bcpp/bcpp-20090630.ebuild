# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-util/cvs-repo/gentoo-x86/dev-util/bcpp/bcpp-20090630.ebuild,v 1.1 2010/07/01 17:13:58 phajdan.jr Exp $

EAPI="2"

inherit eutils

DESCRIPTION="Indents C/C++ source code"
HOMEPAGE="http://invisible-island.net/bcpp/"
SRC_URI="ftp://invisible-island.net/bcpp/${P}.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos"
IUSE=""

DEPEND=""
RDEPEND=""

src_prepare() {
	epatch "${FILESDIR}/${PN}-20050725-etc-cfg-files.patch"
}

src_install() {
	make DESTDIR="${D}" install || die "make install failed"
	dodoc CHANGES MANIFEST README VERSION txtdocs/hirachy.txt \
		txtdocs/manual.txt || die "dodoc failed"

	# Install our configuration files.
	insinto /etc/bcpp
	doins bcpp.cfg indent.cfg || die "doins failed"
}

pkg_postinst() {
	elog "Check the documentation for more information on how to"
	elog "Run bcpp.  Please note that in order to get help for"
	elog "bcpp, please run bcpp -h and not the command by itself."
	elog ""
	elog "Configuration files are at /etc/bcpp."
	elog "To use them, use the -c option followed by the filename."
}
