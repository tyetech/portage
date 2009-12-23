# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/AppConfig/Attic/AppConfig-1.66.ebuild,v 1.8 2009/12/23 17:23:43 grobian Exp $

EAPI=2

MODULE_AUTHOR=ABW
inherit perl-module eutils

DESCRIPTION="Perl5 module for reading configuration files and parsing command line arguments."

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="alpha amd64 ia64 ppc ppc64 sparc x86 ~x86-fbsd ~x86-solaris"
IUSE=""

DEPEND=">=dev-perl/File-HomeDir-0.57"
RDEPEND="${DEPEND}"

PATCHES=( "${FILESDIR}/blockdiffs.patch" )
SRC_TEST="do"
