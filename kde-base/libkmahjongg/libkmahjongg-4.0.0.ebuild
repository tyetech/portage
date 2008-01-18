# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/libkmahjongg/Attic/libkmahjongg-4.0.0.ebuild,v 1.1 2008/01/18 01:31:39 ingmar Exp $

EAPI="1"

KMNAME=kdegames
inherit kde4-meta

DESCRIPTION="LibKMahjongg for KDE"
KEYWORDS="~amd64 ~x86"
IUSE="debug "

PATCHES="${FILESDIR}/libkmahjongg-4.0.0-link.patch"
