# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/File-Which/Attic/File-Which-1.08.ebuild,v 1.2 2009/09/22 05:07:42 tgall Exp $

EAPI=2

MODULE_AUTHOR=ADAMK
inherit perl-module

DESCRIPTION="Perl module implementing 'which' internally"

SLOT="0"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE="test"

RDEPEND=""
DEPEND="test? ( dev-perl/Test-Script )"

SRC_TEST="do"
mydoc="TODO"
