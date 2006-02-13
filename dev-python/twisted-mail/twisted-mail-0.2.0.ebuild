# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/twisted-mail/Attic/twisted-mail-0.2.0.ebuild,v 1.3 2006/02/13 22:26:13 marienz Exp $

MY_PACKAGE=Mail

inherit twisted eutils

DESCRIPTION="A Twisted Mail library, server and client."

KEYWORDS="~alpha ~ia64 ~sparc ~x86"

DEPEND=">=dev-python/twisted-2.1
	dev-python/twisted-names"

src_unpack() {
	unpack ${A}
	cd "${S}"
	epatch "${FILESDIR}/${P}-tests-2.2-compat.patch"
}
