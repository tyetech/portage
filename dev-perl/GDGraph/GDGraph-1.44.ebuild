# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/GDGraph/Attic/GDGraph-1.44.ebuild,v 1.9 2010/07/19 21:50:16 maekke Exp $

MODULE_AUTHOR=BWARFIELD
inherit perl-module

DESCRIPTION="perl5 module to create charts using the GD module"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="alpha amd64 ~arm ia64 ppc ppc64 sparc x86 ~x86-fbsd ~x86-solaris"
IUSE=""

DEPEND="dev-perl/GDTextUtil
	dev-perl/GD
	media-libs/gd
	dev-lang/perl"
