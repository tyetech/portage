# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/DBIx-Class-InflateColumn-IP/Attic/DBIx-Class-InflateColumn-IP-0.02001.ebuild,v 1.1 2009/06/23 07:37:00 robbat2 Exp $

EAPI=2
MODULE_AUTHOR="ILMARI"

inherit perl-module

DESCRIPTION="Auto-create NetAddr::IP objects from columns"

IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-perl/NetAddr-IP
	>=dev-perl/DBIx-Class-0.08107"
RDEPEND="${DEPEND}"
