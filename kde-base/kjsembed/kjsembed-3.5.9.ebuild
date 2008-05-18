# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kjsembed/Attic/kjsembed-3.5.9.ebuild,v 1.4 2008/05/18 20:41:12 maekke Exp $

KMNAME=kdebindings
KM_MAKEFILESREV=1
EAPI="1"
inherit kde-meta

DESCRIPTION="KDE javascript parser and embedder"
HOMEPAGE="http://xmelegance.org/kjsembed/"

KEYWORDS="~alpha amd64 ~ia64 ~ppc ppc64 ~sparc x86"
IUSE=""

DEPEND="|| ( >=kde-base/kwin-${PV}:${SLOT} >=kde-base/kdebase-${PV}:${SLOT} )"
RDEPEND="${DEPEND}"

PATCHES="$FILESDIR/no-gtk-glib-check.diff"
