# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-util/cvs-repo/gentoo-x86/dev-util/gperf/Attic/gperf-3.0.1.ebuild,v 1.11 2004/08/06 08:41:06 gmsoft Exp $

DESCRIPTION="A perfect hash function generator."
SRC_URI="ftp://ftp.gnu.org/pub/gnu/gperf/${P}.tar.gz"
HOMEPAGE="http://www.gnu.org/software/gperf/gperf.html"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86 ~ppc sparc alpha amd64 hppa mips ppc64"
IUSE=""
DEPEND="virtual/libc"

src_install () {
	make DESTDIR=${D} install || die
}
