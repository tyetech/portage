# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Data-UUID/Attic/Data-UUID-1.202.ebuild,v 1.3 2009/09/18 18:32:43 tove Exp $

EAPI=2

MODULE_AUTHOR=RJBS
inherit perl-module

DESCRIPTION="Perl extension for generating Globally/Universally Unique Identifiers (GUIDs/UUIDs)"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 ~ia64 ~ppc ~ppc64 ~sparc x86"
IUSE=""

RDEPEND="virtual/perl-Digest-MD5"
DEPEND="${RDEPEND}"

SRC_TEST="do"
