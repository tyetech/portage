# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/libkleo/libkleo-4.4.11.1-r1.ebuild,v 1.3 2012/09/17 18:42:26 johu Exp $

EAPI=4

KMNAME="kdepim"
inherit kde4-meta

DESCRIPTION="KDE library for encryption handling."
KEYWORDS="amd64 ~ppc ~ppc64 x86 ~amd64-linux ~x86-linux"
IUSE="debug"

DEPEND="
	app-crypt/gpgme
	$(add_kdebase_dep kdepimlibs '' 4.6)
"
RDEPEND="${DEPEND}
	app-crypt/gnupg
"

PATCHES=( "${FILESDIR}/${P}-gcc47.patch" )

KMSAVELIBS="true"
KMEXTRACTONLY="kleopatra/"
