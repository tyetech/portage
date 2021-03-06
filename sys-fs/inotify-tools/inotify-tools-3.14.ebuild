# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-fs/cvs-repo/gentoo-x86/sys-fs/inotify-tools/inotify-tools-3.14.ebuild,v 1.1 2010/06/15 11:47:51 polynomial-c Exp $

EAPI="2"

DESCRIPTION="a set of command-line programs providing a simple interface to inotify"
HOMEPAGE="http://inotify-tools.sourceforge.net/"
SRC_URI="http://github.com/downloads/rvoicilas/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm ~hppa ~x86"
IUSE="doc"

DEPEND="doc? ( app-doc/doxygen )"
RDEPEND=""

src_prepare() {
	# timestamps are busted in tarball
	find . -type f -exec touch -r configure {} +
}

src_configure() {
	# only docs installed are doxygen ones, so use /html
	econf \
		--docdir=/usr/share/doc/${PF}/html \
		$(use_enable doc doxygen) \
		|| die
}

src_install() {
	emake DESTDIR="${D}" install || die
	dodoc README NEWS AUTHORS ChangeLog
}
