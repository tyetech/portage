# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-zope/cvs-repo/gentoo-x86/net-zope/plonepopoll/Attic/plonepopoll-2.3.ebuild,v 1.5 2006/01/27 02:42:57 vapier Exp $

inherit zproduct

MY_PN="PlonePopoll"
DESCRIPTION="Plone product which provides multiple choice polls"
HOMEPAGE="http://ingeniweb.sourceforge.net/Products/PlonePopoll/"
SRC_URI="mirror://sourceforge/ingeniweb/${MY_PN}-${PV}.tar.gz"

LICENSE="GPL-2"
KEYWORDS="~x86"

DEPEND="=net-zope/plone-2.0*"

ZPROD_LIST="${MY_PN}"
