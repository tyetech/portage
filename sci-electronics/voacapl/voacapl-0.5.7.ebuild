# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-electronics/cvs-repo/gentoo-x86/sci-electronics/voacapl/Attic/voacapl-0.5.7.ebuild,v 1.2 2010/12/16 15:36:41 jlec Exp $

EAPI="2"

DESCRIPTION="HF propagation prediction tool"
HOMEPAGE="http://www.qsl.net/hz1jw/voacapl/index.html"
SRC_URI="http://www.qsl.net/hz1jw/${PN}/downloads/${P}.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

src_install() {
	emake DESTDIR="${D}" docdir=/usr/share/doc/${PF} install \
		|| die "make install failed"
}
