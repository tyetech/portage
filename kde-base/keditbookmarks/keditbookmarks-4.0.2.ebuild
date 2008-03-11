# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/keditbookmarks/Attic/keditbookmarks-4.0.2.ebuild,v 1.1 2008/03/10 23:37:39 philantrop Exp $

EAPI="1"

KMNAME=kdebase
KMMODULE=apps/$PN
inherit kde4-meta

DESCRIPTION="KDE's bookmarks editor"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

DEPEND=">=kde-base/libkonq-${PV}:${SLOT}"
RDEPEND="${DEPEND}"

KMEXTRACTONLY="apps/lib/konq/"
