# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/perl-core/cvs-repo/gentoo-x86/perl-core/IPC-Cmd/Attic/IPC-Cmd-0.66.ebuild,v 1.1 2010/11/27 18:43:42 tove Exp $

EAPI=3

MODULE_AUTHOR=BINGOS
inherit perl-module

DESCRIPTION="Finding and running system commands made easy"

SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

DEPEND="virtual/perl-Locale-Maketext-Simple
	virtual/perl-Module-Load-Conditional
	>=virtual/perl-Params-Check-0.26"
RDEPEND="${DEPEND}"

SRC_TEST=do
