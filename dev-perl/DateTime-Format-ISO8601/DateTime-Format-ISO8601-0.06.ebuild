# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/DateTime-Format-ISO8601/Attic/DateTime-Format-ISO8601-0.06.ebuild,v 1.2 2008/12/09 09:33:04 tove Exp $

MODULE_AUTHOR="JHOBLITT"

inherit perl-module

DESCRIPTION="Parses ISO8601 formats"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-perl/DateTime
	dev-perl/DateTime-Format-Builder"
