# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Test-MockObject/Attic/Test-MockObject-1.09.ebuild,v 1.1 2009/10/10 12:26:34 tove Exp $

EAPI=2

MODULE_AUTHOR=CHROMATIC
inherit perl-module

DESCRIPTION="Perl extension for emulating troublesome interfaces"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=">=dev-perl/UNIVERSAL-isa-0.06
	>=dev-perl/UNIVERSAL-can-1.11"
DEPEND="${RDEPEND}
	test? ( dev-perl/Test-Exception )"

SRC_TEST=do
