# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Email-Simple/Email-Simple-2.102.0.ebuild,v 1.5 2012/10/11 14:26:15 ago Exp $

EAPI=4

MODULE_AUTHOR=RJBS
MODULE_VERSION=2.102
inherit perl-module

DESCRIPTION="Simple parsing of RFC2822 message format and headers"

SLOT="0"
KEYWORDS="amd64 ppc ppc64 ~x86 ~sparc-solaris ~x86-solaris"
IUSE="test"

RDEPEND="dev-perl/Email-Date-Format"
DEPEND="${RDEPEND}
	test? (
		dev-perl/Test-Pod
		dev-perl/Test-Pod-Coverage
		virtual/perl-Test-Simple
	)"
RDEPEND="${RDEPEND}
	!dev-perl/Email-Simple-Creator"

SRC_TEST="do"
