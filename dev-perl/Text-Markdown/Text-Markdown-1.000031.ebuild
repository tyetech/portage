# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Text-Markdown/Attic/Text-Markdown-1.000031.ebuild,v 1.1 2010/03/22 10:39:00 tove Exp $

EAPI=2

MODULE_AUTHOR=BOBTFISH
#MODULE_A=${P}.tgz
inherit perl-module

DESCRIPTION="Convert MultiMarkdown syntax to (X)HTML"

SLOT="0"
LICENSE="BSD"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="virtual/perl-Digest-MD5
	virtual/perl-Getopt-Long
	virtual/perl-Text-Balanced"

DEPEND="${RDEPEND}
	test? ( virtual/perl-Test-Simple
		dev-perl/Text-Diff
		dev-perl/List-MoreUtils
		dev-perl/Test-Differences
		dev-perl/Test-Exception )"
#		dev-perl/Test-Pod
#		dev-perl/Test-Pod-Coverage

SRC_TEST=do
mydoc="Readme.text Todo"
