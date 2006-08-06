# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/phat/Attic/phat-0.4.0.ebuild,v 1.1 2006/08/06 04:58:43 matsuu Exp $

IUSE="debug doc"

DESCRIPTION="PHAT is a collection of GTK+ widgets geared toward pro-audio apps."
HOMEPAGE="http://phat.berlios.de/"
SRC_URI="http://download.berlios.de/phat/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"

DEPEND=">=x11-libs/gtk+-2.4"

src_compile() {
	econf $(use_enable debug) \
		$(use_enable doc gtk-doc) || die

	emake || die
}

src_install() {
	emake DESTDIR="${D}" install || die
	dodoc AUTHORS ChangeLog NEWS README TODO
}
