# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-misc/cvs-repo/gentoo-x86/kde-misc/katapult/Attic/katapult-0.3.1.4.ebuild,v 1.2 2007/05/06 21:20:19 ticho Exp $

inherit kde

DESCRIPTION="KDE application to allow fast access to applications, bookmarks and other items."
HOMEPAGE="http://www.thekatapult.org.uk/"
SRC_URI="mirror://sourceforge/${PN}/${P/-/_}.orig.tar.gz"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~amd64 ~ppc x86"
IUSE=""

need-kde 3.3
