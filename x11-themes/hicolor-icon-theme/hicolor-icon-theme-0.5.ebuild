# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-themes/cvs-repo/gentoo-x86/x11-themes/hicolor-icon-theme/Attic/hicolor-icon-theme-0.5.ebuild,v 1.10 2004/10/12 20:07:53 gmsoft Exp $

DESCRIPTION="Fallback theme for the freedesktop icon theme specification"
HOMEPAGE="http://freedesktop.org/Software/icon-theme"
SRC_URI="http://freedesktop.org/Software/icon-theme/releases/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 ppc sparc ~mips alpha arm hppa amd64 ia64 ppc64"
IUSE=""

DEPEND=""

src_install() {

	make DESTDIR=${D} install || die
	dodoc README ChangeLog

}
