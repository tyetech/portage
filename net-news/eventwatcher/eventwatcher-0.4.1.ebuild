# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-news/cvs-repo/gentoo-x86/net-news/eventwatcher/Attic/eventwatcher-0.4.1.ebuild,v 1.6 2005/08/21 21:14:56 greg_g Exp $

inherit kde

DESCRIPTION="A KDE application which notifies about various events."
HOMEPAGE="http://eventwatcher.sourceforge.net/"
SRC_URI="mirror://sourceforge/eventwatcher/${P}.tar.bz2"
LICENSE="LGPL-2"

SLOT="0"
KEYWORDS="x86 ~sparc ~ppc ~amd64"
IUSE=""

DEPEND="|| ( kde-base/librss kde-base/kdenetwork )"

need-kde 3
