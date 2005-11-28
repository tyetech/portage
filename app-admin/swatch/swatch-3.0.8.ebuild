# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-admin/cvs-repo/gentoo-x86/app-admin/swatch/Attic/swatch-3.0.8.ebuild,v 1.8 2005/11/28 12:06:51 mcummings Exp $

inherit perl-app

DESCRIPTION="Perl-based system log watcher"
HOMEPAGE="http://swatch.sourceforge.net/"
SRC_URI="mirror://sourceforge/swatch/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 ppc"
IUSE=""

DEPEND="${DEPEND}
	dev-perl/Date-Calc
	dev-perl/TimeDate
	dev-perl/File-Tail
	>=perl-core/Time-HiRes-1.12"
