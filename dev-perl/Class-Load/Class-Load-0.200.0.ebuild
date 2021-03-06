# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Class-Load/Class-Load-0.200.0.ebuild,v 1.5 2012/09/09 16:35:03 armin76 Exp $

EAPI=4

MODULE_AUTHOR=DROLSKY
MODULE_VERSION=0.20
inherit perl-module

DESCRIPTION="A working (require q{Class::Name}) and more"

SLOT="0"
KEYWORDS="alpha ~amd64 arm ~hppa ia64 ppc s390 sh sparc ~x86 ~ppc-aix ~x86-fbsd ~x86-freebsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~x86-solaris"
IUSE="test"

RDEPEND="
	virtual/perl-Scalar-List-Utils
	dev-perl/Data-OptList
	>=dev-perl/Module-Runtime-0.12.0
	>=dev-perl/Module-Implementation-0.40.0
	>=dev-perl/Package-Stash-0.320.0
	dev-perl/Try-Tiny
"
DEPEND="${RDEPEND}
	test? (
		virtual/perl-Test-Simple
		dev-perl/Test-Fatal
		dev-perl/Test-Requires
	)"

SRC_TEST="do"
