# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-office/cvs-repo/gentoo-x86/app-office/qcharselect/qcharselect-0.2.ebuild,v 1.1 2009/12/12 13:11:45 ssuominen Exp $

EAPI=2
inherit multilib

DESCRIPTION="A Qt4 port of KCharSelect from KDE 3.5"
HOMEPAGE="http://qcharselect.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

DEPEND="x11-libs/qt-gui:4[qt3support]"

src_prepare() {
	sed -i \
		-e 's:update-mime-database:true:g' \
		-e 's:data/desktop/qcharselect:src/QCharSelect:' \
		Makefile.in || die
}

src_configure() {
	local myconf
	use debug && myconf="--enable-debug"

	econf \
		--with-qtdir=/usr \
		--with-qtlibdir=/usr/$(get_libdir)/qt4 \
		${myconf}
}

src_install() {
	emake DESTDIR="${D}" install || die
	dodoc README
}
