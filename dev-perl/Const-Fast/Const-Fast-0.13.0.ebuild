# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Const-Fast/Const-Fast-0.13.0.ebuild,v 1.1 2012/09/08 07:07:50 tove Exp $

EAPI=4

MODULE_AUTHOR=LEONT
MODULE_VERSION=0.013
inherit perl-module

DESCRIPTION="Facility for creating read-only scalars, arrays, and hashes"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-perl/Sub-Exporter
	dev-perl/Sub-Exporter-Progressive
"
DEPEND="${RDEPEND}
	test? (
		>=dev-perl/Test-Exception-0.290.0
	)
"

SRC_TEST=do
