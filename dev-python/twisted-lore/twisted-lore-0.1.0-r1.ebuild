# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/twisted-lore/Attic/twisted-lore-0.1.0-r1.ebuild,v 1.8 2006/08/01 15:13:40 blubb Exp $

MY_PACKAGE=Lore

inherit twisted

DESCRIPTION="Twisted documentation system"

KEYWORDS="amd64 ~ia64 ~ppc sparc x86"

DEPEND=">=dev-python/twisted-2
	<dev-python/twisted-2.4
	dev-python/twisted-web"
