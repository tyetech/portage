# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-zope/cvs-repo/gentoo-x86/net-zope/cmfquickinstallertool/Attic/cmfquickinstallertool-1.5.0.ebuild,v 1.1 2004/07/27 19:24:37 batlogg Exp $

inherit zproduct

DESCRIPTION="Makes it easy to install cmf/plone products."
HOMEPAGE="http://www.sf.net/projects/collective/"
SRC_URI="mirror://sourceforge/collective/CMFQuickInstallerTool-${PV}.tgz"
LICENSE="GPL-2"
KEYWORDS="~x86 ~ppc"
IUSE=""
RDEPEND=">=net-zope/cmf-1.3
	${RDEPEND}"

ZPROD_LIST="CMFQuickInstallerTool"
