# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-themes/cvs-repo/gentoo-x86/x11-themes/ethemes/ethemes-1.0.1.ebuild,v 1.1 2010/08/14 01:18:50 vapier Exp $

MY_P="e16-themes-${PV}"
DESCRIPTION="all the official Enlightenment themes"
HOMEPAGE="http://www.enlightenment.org/"
SRC_URI="mirror://sourceforge/enlightenment/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~sh ~sparc ~x86"
IUSE=""

RDEPEND="!x11-themes/etheme-BlueSteel
	!x11-themes/etheme-BrushedMetal-Tigert
	!x11-themes/etheme-Ganymede
	!x11-themes/etheme-ShinyMetal"

S=${WORKDIR}/${MY_P}

src_install() {
	emake install DESTDIR="${D}" || die
	dodoc AUTHORS ChangeLog
}
