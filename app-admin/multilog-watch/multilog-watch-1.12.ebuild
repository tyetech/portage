# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-admin/cvs-repo/gentoo-x86/app-admin/multilog-watch/multilog-watch-1.12.ebuild,v 1.2 2008/01/25 23:34:04 bangert Exp $

inherit eutils
DESCRIPTION="Watches a multilog file for irregularities"

HOMEPAGE="http://www.eyrie.org/~eagle/software/multilog-watch/"
SRC_URI="http://archives.eyrie.org/software/system/multilog-watch
http://www.eyrie.org/%7Eeagle/software/multilog-watch/sample.filter"

LICENSE="Artistic GPL-2"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

RDEPEND="dev-lang/perl
		virtual/qmail"

src_unpack() {
	mkdir "${S}"
	cp "${DISTDIR}"/multilog-watch "${S}"
	cp "${DISTDIR}"/sample.filter "${S}"
}

src_compile() {
	mv multilog-watch multilog-watch.orig
	sed -e 's/\/etc\/leland/\/etc\/multilog-watch/' multilog-watch.orig > multilog-watch
	/usr/bin/pod2man -s 1 multilog-watch multilog-watch.1
}

src_install() {
	dodir /etc/multilog-watch
	insinto /etc/multilog-watch
	doins sample.filter

	dobin multilog-watch || die 'install failed'
	doman multilog-watch.1
}
