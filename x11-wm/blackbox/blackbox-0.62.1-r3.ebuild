# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/x11-wm/cvs-repo/gentoo-x86/x11-wm/blackbox/Attic/blackbox-0.62.1-r3.ebuild,v 1.3 2002/08/14 15:27:51 murphy Exp $

inherit commonbox

S=${WORKDIR}/${P}
DESCRIPTION="A small, fast, full-featured window manager for X"
SRC_URI="mirror://sourceforge/blackboxwm/${P}.tar.gz"
HOMEPAGE="http://blackboxwm.sf.net/"

LICENSE="as-is"
SLOT="0"
KEYWORDS="x86 ppc sparc sparc64"

mydoc="ChangeLog* LICENSE TODO*"
