# Copyright 1999-2001 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Author Bart Verwilst <verwilst@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/kift/Attic/kift-0.8.1.ebuild,v 1.1 2002/05/30 20:48:01 verwilst Exp $

inherit kde-base || die

need-kde 3

DESCRIPTION="KDE interface for giFT"
HOMEPAGE="http://kift.sourceforge.net"

#newdepend "$DEPEND >=net-misc/gift-0.9.7"

SRC_URI="mirror://sourceforge/kift/${P}.tar.gz"
