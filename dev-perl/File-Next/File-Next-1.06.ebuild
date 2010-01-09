# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/File-Next/Attic/File-Next-1.06.ebuild,v 1.4 2010/01/09 20:06:04 grobian Exp $

EAPI=2

MODULE_AUTHOR=PETDANCE
inherit perl-module

DESCRIPTION="File::Next is an iterator-based module for finding files"

LICENSE="|| ( Artistic-2 GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="amd64 x86 ~x86-interix ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~x86-solaris"
IUSE="test"

RDEPEND="virtual/perl-File-Spec
	virtual/perl-Test-Simple"
DEPEND="test? ( ${RDEPEND}
		dev-perl/Test-Pod
		dev-perl/Test-Pod-Coverage )"

SRC_TEST=do
