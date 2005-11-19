# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/rox-extra/cvs-repo/gentoo-x86/rox-extra/wallpaper/Attic/wallpaper-2.0.ebuild,v 1.2 2005/11/19 18:50:42 svyatogor Exp $

DESCRIPTION="Wallpaper - For setting the backdrop for the ROX Desktop"
HOMEPAGE="http://rox.sourceforge.net/"
SRC_URI="mirror://sourceforge/rox/${P}.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~ppc"
IUSE=""

ROX_LIB_VER=1.9.8
APPNAME=Wallpaper

inherit rox

# do some cleanup. Wallpaper 2.0 has CVS dirs included
pkg_preinst() {
	find ${D}/usr/lib/rox/${APPNAME} -name 'CVS' | xargs rm -fr
}
