# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-i18n/cvs-repo/gentoo-x86/app-i18n/man-pages-fr/man-pages-fr-2.39.0.ebuild,v 1.5 2012/09/29 10:53:42 ulm Exp $

DESCRIPTION="A somewhat comprehensive collection of french Linux man pages"
HOMEPAGE="http://fr.tldp.org/manfr.php"
SRC_URI="ftp://ftp.win.tue.nl/pub/linux-local/manpages/translations/${P}.tar.bz2"

LICENSE="man-pages GPL-2+ BSD MIT LDP-1 public-domain"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k ~mips ppc ppc64 s390 sh sparc x86 ~x86-linux"
IUSE=""

RDEPEND="virtual/man"

src_compile() { :; }

src_install() {
	dodoc LISEZ_MOI changements
	for x in man? ; do
		insinto /usr/share/man/fr/${x}
		doins ${x}/* || die "doins ${x}"
	done
}
