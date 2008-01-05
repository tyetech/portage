# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-libs/cvs-repo/gentoo-x86/net-libs/libnetdude/Attic/libnetdude-0.10a.ebuild,v 1.1 2008/01/05 20:19:06 jokey Exp $

DESCRIPTION="Library for manipulating libpcap/tcpdump trace files"
HOMEPAGE="http://netdude.sourceforge.net/index.html"
SRC_URI="mirror://sourceforge/netdude/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86"

DEPEND=">=net-libs/libpcapnav-0.8
	=dev-libs/glib-1*"

IUSE="doc"

src_compile() {
	econf $(use_enable doc gtk-doc) || die "econf failed"
	emake || die "emake failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
	dodoc AUTHORS ChangeLog README TODO

	use doc || rm -rf "${D}"/usr/share/gtk-doc
}
