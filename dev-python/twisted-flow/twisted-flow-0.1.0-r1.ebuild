# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/twisted-flow/Attic/twisted-flow-0.1.0-r1.ebuild,v 1.8 2006/05/29 17:58:05 blubb Exp $

MY_PACKAGE=Flow

inherit twisted

DESCRIPTION="A Twisted concurrency programming library."

KEYWORDS="amd64 ~ia64 ~ppc sparc x86"

DEPEND=">=dev-python/twisted-2
	<dev-python/twisted-2.4"
