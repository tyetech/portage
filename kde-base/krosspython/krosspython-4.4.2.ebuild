# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/krosspython/Attic/krosspython-4.4.2.ebuild,v 1.1 2010/03/30 21:29:32 spatz Exp $

EAPI="3"

KMNAME="kdebindings"
KMMODULE="python/krosspython"
inherit kde4-meta

DESCRIPTION="Kross scripting framework: Python interpreter"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~amd64-linux ~x86-linux"
IUSE="debug"

DEPEND="
	dev-lang/python
"
RDEPEND="${DEPEND}"
