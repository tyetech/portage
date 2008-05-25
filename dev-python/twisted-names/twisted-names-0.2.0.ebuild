# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/twisted-names/Attic/twisted-names-0.2.0.ebuild,v 1.7 2008/05/25 20:27:22 lordvan Exp $

MY_PACKAGE=Names

inherit twisted

DESCRIPTION="A Twisted DNS implementation."

KEYWORDS="~alpha ~amd64 ia64 ~ppc ~sparc ~x86"

DEPEND=">=dev-python/twisted-2
	<dev-python/twisted-2.4"
