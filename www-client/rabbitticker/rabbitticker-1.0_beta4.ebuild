# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/www-client/cvs-repo/gentoo-x86/www-client/rabbitticker/Attic/rabbitticker-1.0_beta4.ebuild,v 1.6 2005/07/28 21:09:41 caleb Exp $

DESCRIPTION="Skinnable RSS client for QT"
HOMEPAGE="http://www.work-at.co.jp/rabbit/"
SRC_URI="http://www.work-at.co.jp/rabbit/${PN}-${PV/_beta/b}.tar.gz"

LICENSE="QPL"

SLOT="0"
KEYWORDS="x86 ~ppc"
IUSE=""

DEPEND="=x11-libs/qt-3*"
RDEPEND="${DEPEND}"

S=${WORKDIR}/${PN}-${PV/_beta/b}

src_compile() {
	econf || die
	emake || die
}

src_install() {
	einstall || die
}
