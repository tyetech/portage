# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-zope/cvs-repo/gentoo-x86/net-zope/cmfquickinstallertool/Attic/cmfquickinstallertool-1.1.ebuild,v 1.5 2004/03/26 22:46:28 batlogg Exp $

inherit zproduct

DESCRIPTION="Makes it easy to install cmf/plone products."
HOMEPAGE="http://www.sf.net/projects/collective/"
SRC_URI="mirror://sourceforge/collective/CMFQuickInstallerTool_${PV}.tgz"
LICENSE="GPL-2"
KEYWORDS="~x86 ~ppc"
RDEPEND=">=net-zope/cmf-1.3
	${RDEPEND}"

ZPROD_LIST="CMFQuickInstallerTool"

pkg_postinst()
{
	zproduct_pkg_postinst
	ewarn "Please read README.txt.gz for this product. This product needs to"
	ewarn "be manually added to a CMF/Plone site."
}
