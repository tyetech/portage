# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-admin/cvs-repo/gentoo-x86/app-admin/swatch/Attic/swatch-3.1.1.ebuild,v 1.6 2006/02/11 21:05:00 mcummings Exp $

inherit perl-app

DESCRIPTION="Perl-based system log watcher"
HOMEPAGE="http://swatch.sourceforge.net/"
SRC_URI="mirror://sourceforge/swatch/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~ppc ~amd64"
IUSE=""

DEPEND="${DEPEND}
	dev-perl/DateManip
	dev-perl/Date-Calc
	dev-perl/TimeDate
	dev-perl/File-Tail
	>=virtual/perl-Time-HiRes-1.12"
