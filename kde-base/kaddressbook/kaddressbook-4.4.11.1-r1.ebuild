# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kaddressbook/kaddressbook-4.4.11.1-r1.ebuild,v 1.3 2012/09/17 18:40:45 johu Exp $

EAPI=4

KMNAME="kdepim"
KDE_HANDBOOK=optional
inherit kde4-meta

DESCRIPTION="The KDE Address Book"
KEYWORDS="amd64 ~ppc ~ppc64 x86 ~amd64-linux ~x86-linux"
IUSE="debug"

DEPEND="
	$(add_kdebase_dep kdelibs 'semantic-desktop' 4.6)
	$(add_kdebase_dep kdepimlibs 'semantic-desktop' 4.6)
	$(add_kdebase_dep libkdepim)
	$(add_kdebase_dep libkleo)
"
RDEPEND="${DEPEND}
	$(add_kdebase_dep kdepim-runtime)
"

KMEXTRA="
	plugins/kaddressbook/
	plugins/ktexteditor/
"
KMEXTRACTONLY="
	libkleo/
"

KMLOADLIBS="libkdepim"

PATCHES=( "${FILESDIR}/4.4/"0002-*.patch )

pkg_postinst() {
	kde4-meta_pkg_postinst

	if ! has_version kde-base/kdepim-kresources:${SLOT}; then
		echo
		elog "For groupware functionality, please install kde-base/kdepim-kresources:${SLOT}"
		echo
	fi
}
