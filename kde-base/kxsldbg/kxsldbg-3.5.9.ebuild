# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kxsldbg/Attic/kxsldbg-3.5.9.ebuild,v 1.1 2008/02/20 23:29:23 philantrop Exp $
KMNAME=kdewebdev
EAPI="1"
inherit kde-meta flag-o-matic

DESCRIPTION="A KDE KPart Application for xsldbg, an XSLT debugger"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd"
IUSE="kdehiddenvisibility"

DEPEND="dev-libs/libxslt
	dev-libs/libxml2"
