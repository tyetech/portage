# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/glsof/Attic/glsof-0.9.16.ebuild,v 1.1 2004/11/08 12:43:12 ticho Exp $

inherit base  # Saves us work

DESCRIPTION="GTK+ GUI for LSOF"
HOMEPAGE="http://glsof.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${PF}.tar.gz"
LICENSE="GPL-2"

SLOT="0"
KEYWORDS="~x86"
IUSE=""

RDEPEND=">=x11-libs/gtk+-2.3.1
	dev-libs/libxml2
	sys-apps/lsof"

DEPEND="${RDEPEND}
	dev-util/pkgconfig"

src_install() {
	base_src_install
	dodoc AUTHORS COPYING INSTALL README
}
