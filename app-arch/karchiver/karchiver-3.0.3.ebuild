# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-arch/cvs-repo/gentoo-x86/app-arch/karchiver/Attic/karchiver-3.0.3.ebuild,v 1.1 2003/05/02 17:00:12 caleb Exp $

inherit kde-base || die 
need-kde 3

DESCRIPTION="utility to ease working with compressed files such as tar.gz/tar.bz2"
HOMEPAGE="http://perso.wanadoo.fr/coquelle/karchiver/"
SRC_URI="http://perso.wanadoo.fr/coquelle/karchiver/${P}.tar.bz2"

LICENSE="GPL-1"
SLOT="3.0"
KEYWORDS="~x86"
