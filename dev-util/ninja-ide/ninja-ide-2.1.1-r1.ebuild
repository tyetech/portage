# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-util/cvs-repo/gentoo-x86/dev-util/ninja-ide/ninja-ide-2.1.1-r1.ebuild,v 1.1 2012/10/10 14:37:28 hasufell Exp $

# XXX: tests

EAPI=4

PYTHON_COMPAT="python2_6 python2_7"

inherit eutils gnome2-utils python-distutils-ng vcs-snapshot

DESCRIPTION="Ninja-IDE Is Not Just Another IDE"
HOMEPAGE="http://www.ninja-ide.org"
SRC_URI="https://github.com/ninja-ide/ninja-ide/tarball/v${PV} -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-python/PyQt4[webkit]
	dev-python/argparse
	dev-python/simplejson
	dev-python/pyinotify"
DEPEND="${RDEPEND}"

python_prepare_all() {
	epatch "${FILESDIR}"/${P}-lang.patch
}

python_install_all() {
	newicon -s 256 icon.png ${PN}.png
	make_desktop_entry ${PN} "NINJA-IDE"
}

pkg_preinst() {
	gnome2_icon_savelist
}

pkg_postinst() {
	gnome2_icon_cache_update
}

pkg_postrm() {
	gnome2_icon_cache_update
}
