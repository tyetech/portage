# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-misc/cvs-repo/gentoo-x86/kde-misc/kshutdown/Attic/kshutdown-1.0.ebuild,v 1.1 2007/05/23 19:30:14 genstef Exp $

inherit kde

DESCRIPTION="A shutdown manager for KDE"
HOMEPAGE="http://kshutdown.sourceforge.net"
SRC_URI="mirror://sourceforge/kshutdown/${P}.tar.bz2"
LICENSE="GPL-2"

IUSE=""
KEYWORDS="~amd64 ~ppc ~x86"
SLOT="0"

RDEPEND="|| ( ( kde-base/kdesu kde-base/kcontrol kde-base/kdialog )
	      kde-base/kdebase )"

need-kde 3.4
