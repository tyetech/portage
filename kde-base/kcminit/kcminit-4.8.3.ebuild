# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kcminit/Attic/kcminit-4.8.3.ebuild,v 1.3 2012/05/18 19:20:11 ago Exp $

EAPI=4

KMNAME="kde-workspace"
inherit kde4-meta

DESCRIPTION="KCMInit - runs startups initialization for Control Modules."
KEYWORDS="amd64 ~arm ~ppc ~ppc64 ~x86 ~amd64-linux ~x86-linux"
IUSE="debug"

DEPEND="
	$(add_kdebase_dep ksplash)
"
RDEPEND="${DEPEND}"
