# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdeutils/Attic/kdeutils-3.3.0.ebuild,v 1.3 2004/08/27 22:56:24 weeve Exp $

inherit kde-dist eutils

DESCRIPTION="KDE utilities"

KEYWORDS="~x86 ~amd64 ppc64 ~sparc"
IUSE=""

DEPEND="~kde-base/kdebase-${PV}
	app-crypt/gnupg"
