# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-misc/cvs-repo/gentoo-x86/kde-misc/kima/Attic/kima-0.6.ebuild,v 1.1 2006/12/28 20:16:34 flameeyes Exp $

inherit kde

DESCRIPTION="Hardware monitoring applet for Kicker"
HOMEPAGE="http://www.kde-apps.org/content/show.php?content=33257"
SRC_URI="http://www.elliptique.net/~ken/${PN}/${P}.tar.gz"

KEYWORDS="~amd64"

SLOT="0"
LICENSE="GPL-2"
IUSE=""

need-kde 3.5
