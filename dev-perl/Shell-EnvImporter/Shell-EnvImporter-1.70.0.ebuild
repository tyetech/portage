# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Shell-EnvImporter/Shell-EnvImporter-1.70.0.ebuild,v 1.3 2012/09/01 11:52:11 grobian Exp $

EAPI=4

MODULE_AUTHOR=DFARALDO
MODULE_VERSION=1.07
inherit perl-module

DESCRIPTION="Import environment variable changes from external commands or shell scripts"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 s390 sh sparc x86 ~ppc-aix ~x86-fbsd ~x86-interix ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~x86-solaris"
IUSE=""

DEPEND=">=dev-perl/Class-MethodMaker-2"
RDEPEND="${DEPEND}"

SRC_TEST=no
