# Copyright 1999-2000 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Author Philippe Namias <pnamias@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/app-text/cvs-repo/gentoo-x86/app-text/kfilereplace/Attic/kfilereplace-0.6.1.ebuild,v 1.2 2001/12/23 21:35:15 danarmak Exp $
. /usr/portage/eclass/inherit.eclass
inherit kde-base || die

need-kde 2.1.1

DESCRIPTION="A multifile replace utility"
SRC_URI="http://download.sourceforge.net/kfilereplace/${P}.tar.bz2"
HOMEPAGE="http://kfilereplace.sourceforge.net"

DEPEND="$DEPEND sys-devel/perl"


