# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-apps/cvs-repo/gentoo-x86/sys-apps/hwdata-gentoo/hwdata-gentoo-0.4.ebuild,v 1.3 2008/07/31 01:09:56 wolf31o2 Exp $

inherit eutils

DESCRIPTION="Data for the hwsetup program"
SRC_URI="mirror://gentoo/${P}.tar.bz2
	http://wolf31o2.org/sources/hwdata/${P}.tar.bz2"
HOMEPAGE="http://wolf31o2.org"

IUSE="opengl binary-drivers"
KEYWORDS="alpha amd64 ia64 ppc ppc64 sparc x86"
SLOT="0"
LICENSE="GPL-2"

DEPEND="!sys-apps/hwdata-redhat"
RDEPEND=${DEPEND}

src_unpack() {
	unpack ${A}
	if use x86 || use amd64
	then
		if use opengl && use binary-drivers
		then
			continue
		else
			sed -e 's/DRIVER fglrx/DRIVER radeon/' \
				-e 's/DRIVER nvidia/DRIVER nv/' \
				-i "${S}"/Cards || die
		fi
	fi
	cd "${S}"
	epatch "${FILESDIR}"/${PV}-openchrome.patch
}

src_install() {
	dodoc ChangeLog check-cards
	insinto /usr/share/hwdata
	doins Cards MonitorsDB pcitable blacklist
}
