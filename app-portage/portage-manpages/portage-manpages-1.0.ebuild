# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-portage/cvs-repo/gentoo-x86/app-portage/portage-manpages/Attic/portage-manpages-1.0.ebuild,v 1.1 2004/12/05 23:13:06 vapier Exp $

DESCRIPTION="collection of Gentoo manpages"
HOMEPAGE="http://www.gentoo.org/"
SRC_URI="mirror://gentoo/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86"
IUSE=""

DEPEND=""
RDEPEND="sys-apps/man"

S=${WORKDIR}/man

src_install() {
	doman * || die
}
