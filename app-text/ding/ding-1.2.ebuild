# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/app-text/cvs-repo/gentoo-x86/app-text/ding/Attic/ding-1.2.ebuild,v 1.2 2002/12/09 04:17:43 manson Exp $

S="${WORKDIR}/${P}"
DESCRIPTION="Tk based dictionary (German-English) (incl. dictionary itself)"
SRC_URI="http://cgi.tu-chemnitz.de/ftp-home/pub/Local/urz/ding/${P}.tar.gz"
HOMEPAGE="http://www-user.tu-chemnitz.de/~fri/ding/"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~x86 ~ppc ~sparc "

RDEPEND=">=dev-lang/tk-8*
	>=sys-apps/grep-2*"
DEPEND="${RDEPEND}"

src_install() {
  	exeinto /usr/bin
	doexe ding
	insinto /usr/share/dict
	doins ger-eng.txt
	insinto /usr/share/pixmaps
	doins dbook.xpm
	doins mini-dbook.xpm
	doman ding.1
	dodoc CHANGES
	dodoc COPYING
	dodoc README
	dodoc ding.wmconfig
}
