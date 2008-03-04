# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/lskat/Attic/lskat-4.0.1.ebuild,v 1.2 2008/03/04 04:58:21 jer Exp $

EAPI="1"

KMNAME=kdegames
inherit kde4-meta

DESCRIPTION="Skat game for KDE"
KEYWORDS="~amd64 ~hppa ~x86"
IUSE="debug "

PATCHES="${FILESDIR}/${PN}-4.0.0-link.patch"
