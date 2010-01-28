# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Boulder/Attic/Boulder-1.30.ebuild,v 1.10 2010/01/28 21:07:17 tove Exp $

EAPI=2

MODULE_AUTHOR=LDS
inherit perl-module

DESCRIPTION="An API for hierarchical tag/value structures"

SLOT="0"
KEYWORDS="amd64 ia64 ~ppc sparc x86"
IUSE=""

DEPEND="dev-perl/XML-Parser"

SRC_TEST="do"
