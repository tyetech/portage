# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-themes/cvs-repo/gentoo-x86/x11-themes/liquid/Attic/liquid-0.9.7.ebuild,v 1.2 2004/10/11 23:26:20 carlo Exp $

inherit kde

DESCRIPTION="Liquid theme, revamped for KDE 3.2"
HOMEPAGE="http://developer.berlios.de/projects/liquid/"
SRC_URI="http://download.berlios.de/liquid/${P}.tar.bz2"

SLOT="0"
LICENSE="BSD"
KEYWORDS="x86"
IUSE=""

DEPEND=">=kde-base/kdebase-3.2*"
RDEPEND=">=kde-base/kdebase-3.2*"
need-kde 3.2
