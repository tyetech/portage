# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdeutils/Attic/kdeutils-3.3.1.ebuild,v 1.5 2004/11/07 23:35:30 pylon Exp $

inherit kde-dist eutils

DESCRIPTION="KDE utilities"

KEYWORDS="x86 ~amd64 ~ppc64 sparc ppc ~hppa ~alpha"
IUSE=""

DEPEND="~kde-base/kdebase-${PV}
	app-crypt/gnupg"
