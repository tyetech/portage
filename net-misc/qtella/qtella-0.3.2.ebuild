# Copyright 1999-2001 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Author Bart Verwilst <verwilst@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/qtella/Attic/qtella-0.3.2.ebuild,v 1.1 2001/12/06 17:24:17 verwilst Exp $
. /usr/portage/eclass/inherit.eclass || die
inherit kde-base || die

S=${WORKDIR}/${P}
SRC_URI="http://prdownloads.sourceforge.net/qtella/${P}.tar.gz"

HOMEPAGE="http://qtella.sourceforge.net"
DESCRIPTION="QTella ${PV} (KDE Gnutella Client)"



