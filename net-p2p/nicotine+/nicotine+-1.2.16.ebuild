# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-p2p/cvs-repo/gentoo-x86/net-p2p/nicotine+/nicotine+-1.2.16.ebuild,v 1.6 2011/08/31 01:02:52 dirtyepic Exp $

EAPI="3"
PYTHON_DEPEND="2"

inherit distutils

DESCRIPTION="A fork of nicotine, a Soulseek client in Python"
HOMEPAGE="http://nicotine-plus.sourceforge.net"
SRC_URI="mirror://sourceforge/nicotine-plus/${P}.tar.bz2"

LICENSE="GPL-3 LGPL-3"
SLOT="0"
KEYWORDS="amd64 ppc x86 ~x86-fbsd"
IUSE=""

RDEPEND=">=dev-python/pygtk-2.12"

DEPEND="${RDEPEND}"

PYTHON_MODNAME="pynicotine"

pkg_setup() {
	python_set_active_version 2
}

src_install() {
	distutils_src_install
	python_convert_shebangs -r 2 "${D}"
	dosym nicotine.py /usr/bin/nicotine
}

pkg_postinst() {
	distutils_pkg_postinst
	echo
	elog "You may want to install these packages to add additional features"
	elog "to Nicotine+:"
	elog
	elog "dev-python/geoip-python         Country lookup and flag display"
	elog "media-libs/mutagen              Media metadata extraction"
	elog "net-libs/miniupnpc              UPnP portmapping"
	echo
}
