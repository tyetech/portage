# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-misc/cvs-repo/gentoo-x86/app-misc/g15composer/g15composer-3.1.ebuild,v 1.11 2009/11/12 18:33:06 ssuominen Exp $

EAPI=2
inherit eutils

DESCRIPTION="A library to render text and shapes into a buffer usable by the Logitech G15 keyboard"
HOMEPAGE="http://g15tools.sourceforge.net/"
SRC_URI="mirror://sourceforge/g15tools/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~ppc ~ppc64 x86"
IUSE="truetype examples"

DEPEND="app-misc/g15daemon
	>=dev-libs/libg15render-1.2[truetype?]
	truetype? ( media-libs/freetype )"

src_configure() {
	econf \
		$(use_enable truetype ttf)
}

src_install() {
	emake DESTDIR="${D}" install || die "make install failed"

	newinitd "${FILESDIR}/${P}.initd" ${PN}
	newconfd "${FILESDIR}/${P}.confd" ${PN}

	dodoc AUTHORS README ChangeLog

	if use examples ; then
		exeinto "/usr/share/${PN}"
		doexe examples/*
	fi
}

pkg_postinst() {
	elog "Set the user to run g15composer in /etc/conf.d/g15composer before starting the service."
}
