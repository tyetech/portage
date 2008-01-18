# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdegames/Attic/kdegames-4.0.0.ebuild,v 1.2 2008/01/18 03:06:52 mr_bones_ Exp $

EAPI="1"

inherit kde4-base

DESCRIPTION="KDE games module"
HOMEPAGE="http://www.kde.org/"

KEYWORDS="~amd64 ~x86"
IUSE="debug htmlhandbook"
LICENSE="GPL-2 LGPL-2"

RESTRICT="test"

PATCHES="${FILESDIR}/lskat-4.0.0-link.patch"
