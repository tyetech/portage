# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/HTML-Element-Extended/Attic/HTML-Element-Extended-1.18.ebuild,v 1.1 2010/06/12 12:14:41 tove Exp $

EAPI=3

MODULE_AUTHOR=MSISK
inherit perl-module

DESCRIPTION="Extension for manipulating a table composed of HTML::Element style components."

SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE=""

RDEPEND=">=dev-perl/HTML-Tree-3.01"
DEPEND="${RDEPEND}"

SRC_TEST="do"
