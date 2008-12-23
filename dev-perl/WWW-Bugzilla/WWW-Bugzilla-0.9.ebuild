# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/WWW-Bugzilla/Attic/WWW-Bugzilla-0.9.ebuild,v 1.4 2008/12/23 18:58:53 robbat2 Exp $

MODULE_AUTHOR=BMC
inherit perl-module

DESCRIPTION="WWW::Bugzilla - automate interaction with bugzilla"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~amd64 ~ia64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-perl/WWW-Mechanize
	dev-perl/Class-MethodMaker"

DEPEND="${RDEPEND}"
