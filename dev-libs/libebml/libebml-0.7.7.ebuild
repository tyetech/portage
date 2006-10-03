# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-libs/cvs-repo/gentoo-x86/dev-libs/libebml/Attic/libebml-0.7.7.ebuild,v 1.3 2006/10/03 18:59:33 corsair Exp $

inherit eutils

IUSE=""

DESCRIPTION="Extensible binary format library (kinda like XML)"
HOMEPAGE="http://www.matroska.org/"
SRC_URI="http://www.bunkus.org/videotools/mkvtoolnix/sources/${P}.tar.bz2"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~alpha amd64 ~arm ~hppa ~ia64 ~ppc ~ppc-macos ppc64 ~sparc ~x86"

DEPEND=""
RDEPEND=""

src_install() {
	cd ${S}/make/linux
	einstall libdir="${D}/usr/$(get_libdir)" || die "make install failed"
	dodoc ${S}/ChangeLog
}
