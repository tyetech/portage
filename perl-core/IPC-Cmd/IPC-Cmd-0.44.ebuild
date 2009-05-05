# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/perl-core/cvs-repo/gentoo-x86/perl-core/IPC-Cmd/Attic/IPC-Cmd-0.44.ebuild,v 1.1 2009/05/05 07:23:18 tove Exp $

MODULE_AUTHOR="KANE"

inherit perl-module

DESCRIPTION="finding and running system commands made easy"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="virtual/perl-Locale-Maketext-Simple
	virtual/perl-Module-Load-Conditional
	>=virtual/perl-Params-Check-0.26"
RDEPEND="${DEPEND}"

SRC_TEST=do
