# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/ktsuss/Attic/ktsuss-1.4.ebuild,v 1.3 2008/10/09 14:15:54 darkside Exp $

DESCRIPTION="ktsuss: keep the su simple, stupid. Graphical version of su written
in C and GTK+ 2"
HOMEPAGE="http://developer.berlios.de/projects/ktsuss/"
SRC_URI="mirror://berlios//${PN}/${P}.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=x11-libs/gtk+-2.12.11
	>=dev-libs/glib-2.16.5"
DEPEND="dev-util/pkgconfig
	${RDEPEND}"

src_install() {
	emake DESTDIR="${D}" install || die "Install failed"
	dodoc Changelog CREDITS README
}
