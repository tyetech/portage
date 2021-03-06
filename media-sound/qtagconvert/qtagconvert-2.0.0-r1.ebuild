# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-sound/cvs-repo/gentoo-x86/media-sound/qtagconvert/qtagconvert-2.0.0-r1.ebuild,v 1.1 2010/06/13 10:35:40 hwoarang Exp $

EAPI="2"

inherit qt4-r2

DESCRIPTION="Qt4 tag editor for mp3 files"
HOMEPAGE="http://www.qt-apps.org/content/show.php/QTagConvert2?content=100481"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

DEPEND="x11-libs/qt-gui:4"
RDEPEND="${DEPEND}"

src_prepare() {
	sed -i "/documentation.path/s:${PN}:${PF}:" ${PN}.pro \
		|| die "failed to fix documentation path"
	qt4-r2_src_prepare
}
