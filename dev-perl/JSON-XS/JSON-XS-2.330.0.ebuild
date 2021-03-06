# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/JSON-XS/JSON-XS-2.330.0.ebuild,v 1.2 2012/09/28 01:27:18 vapier Exp $

EAPI=4

MODULE_AUTHOR=MLEHMANN
MODULE_VERSION=2.33
inherit perl-module

DESCRIPTION="JSON::XS - JSON serialising/deserialising, done correctly and fast"

SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86 ~x64-macos ~x86-solaris"
IUSE="test"

RDEPEND="dev-perl/common-sense"
DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Harness )"

SRC_TEST="do"
