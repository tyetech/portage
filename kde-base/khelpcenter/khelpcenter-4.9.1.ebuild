# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/khelpcenter/khelpcenter-4.9.1.ebuild,v 1.2 2012/09/19 15:20:15 aballier Exp $

EAPI=4

KDE_HANDBOOK="always"
KMNAME="kde-runtime"
inherit kde4-meta

DESCRIPTION="The KDE Help Center"
KEYWORDS="~amd64 ~x86 ~amd64-fbsd ~amd64-linux ~x86-linux"
IUSE="debug"

RDEPEND="
	$(add_kdebase_dep kdesu)
	>=www-misc/htdig-3.2.0_beta6-r1
"

KMEXTRA="
	doc/documentationnotfound/
	doc/glossary/
	doc/onlinehelp/
"
