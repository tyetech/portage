# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-zope/cvs-repo/gentoo-x86/net-zope/cmfactionicons/Attic/cmfactionicons-0.9.ebuild,v 1.8 2006/01/27 02:27:01 vapier Exp $

inherit zproduct

MY_PN=CMFActionIcons
DESCRIPTION="CMFActionIcons: icon mapping tool, factored for reuse"
HOMEPAGE="http://zope.org/Members/tseaver/CMFActionIcons/"
SRC_URI="http://zope.org/Members/tseaver/${MY_PN}/${MY_PN}-${PV}/${MY_PN}-${PV}.tar.gz"

LICENSE="ZPL"
KEYWORDS="~amd64 ppc ~sparc x86"

S=${WORKDIR}/${MY_PN}-${PV}

ZPROD_LIST="CMFActionIcons"
