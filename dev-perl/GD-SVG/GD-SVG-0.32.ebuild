# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/GD-SVG/Attic/GD-SVG-0.32.ebuild,v 1.1 2008/10/02 05:46:30 tove Exp $

MODULE_AUTHOR=TWH
inherit perl-module

DESCRIPTION="Seamlessly enable SVG output from scripts written using GD"

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~sparc ~x86"
IUSE=""

DEPEND="dev-perl/GD
	dev-perl/SVG
	dev-lang/perl"

SRC_TEST="do"
