# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-zope/cvs-repo/gentoo-x86/net-zope/localizer/Attic/localizer-1.0.0-r1.ebuild,v 1.10 2006/12/30 02:21:41 mr_bones_ Exp $

inherit zproduct

DESCRIPTION="Helps to build multilingual zope websites and zope products"
HOMEPAGE="http://www.localizer.org"
SRC_URI="mirror://sourceforge/lleu/Localizer-${PV}.tgz"

LICENSE="GPL-2"
KEYWORDS="x86 ~ppc"

DEPEND=""

ZPROD_LIST="Localizer"
MYDOC="BUGS.txt old/CHANGES.txt old/UPGRADE.txt RELEASE-*txt* ${MYDOC}"
