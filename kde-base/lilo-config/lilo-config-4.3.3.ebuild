# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/lilo-config/Attic/lilo-config-4.3.3.ebuild,v 1.1 2009/11/02 22:03:13 wired Exp $

EAPI="2"

KMNAME="kdeadmin"
inherit kde4-meta

DESCRIPTION="KDE LiLo kcontrol module"
KEYWORDS="~amd64 ~x86"
IUSE="debug +handbook"

DEPEND="
	$(add_kdebase_dep kdepimlibs)
	sys-boot/lilo
"
RDEPEND="${DEPEND}"

src_configure() {
	mycmakeargs="${mycmakeargs}
		-DBUILD_lilo-config=TRUE -DLILO_EXECUTABLE=TRUE"

	kde4-meta_src_configure
}
