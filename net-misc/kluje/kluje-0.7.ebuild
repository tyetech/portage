# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/kluje/Attic/kluje-0.7.ebuild,v 1.7 2004/03/20 00:51:03 weeve Exp $

inherit kde

LICENSE="GPL-2"
DESCRIPTION="KLuJe - a client for the popular online journal site
LiveJournal."
SRC_URI="mirror://sourceforge/kluje/${P}.tar.gz"
HOMEPAGE="http://kluje.sourceforge.net/"
KEYWORDS="x86 sparc"
DEPEND=">=kde-base/kdebase-3.0"

need-kde 3

PATCHES="$FILESDIR/$P-systraydebug.diff"
