# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Text-Levenshtein/Attic/Text-Levenshtein-0.04.ebuild,v 1.1 2004/03/29 11:33:14 mcummings Exp $

inherit perl-module

MY_P=TL-${PV}
DESCRIPTION="An implementation of the Levenshtein edit distance"
HOMEPAGE="http://search.cpan.org/~jgoldberg/${MY_P}/"
SRC_URI="http://www.cpan.org/authors/id/J/JG/JGOLDBERG/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86"

SRC_TEST="do"
